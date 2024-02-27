import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:instagram_clone/features/home/cubit/home_cubit.dart';
import 'package:instagram_clone/features/home/home_routes.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:photo_gallery/photo_gallery.dart';
import 'package:image/image.dart' as img;

import '../add_post_routes.dart';
import '../add_post_services.dart/i_add_post_services.dart';

part 'add_post_state.dart';
part 'add_post_cubit.freezed.dart';

class AddPostCubit extends Cubit<AddPostState> {
  final IAddPostServices _addPostServices;
  Alignment alignment = Alignment.center;
  final ScrollController scrollController = ScrollController();
  AddPostCubit(this._addPostServices) : super(AddPostState.initial()) {
    getLocalMedia();
  }

  getLocalMedia() async {
    if (await _promptPermissionSetting()) {
      List<Album> albums =
          await PhotoGallery.listAlbums(mediumType: MediumType.image);

      emit(state.copyWith(
        albums: albums,
        selectedAlbum: albums.firstOrNull,
        gettingAlbumLoading: false,
      ));

      if (state.selectedAlbum != null) {
        final m = await state.selectedAlbum!.listMedia();
        if (m.items.isNotEmpty) {
          emit(state.copyWith(
            selectedAlbumPage: m.items,
            selectedImage: m.items.first,
          ));
        }
      }
    } else {
      emit(state.copyWith(gettingAlbumLoading: false));
    }
  }

  Future<bool> _promptPermissionSetting() async {
    if (await Permission.storage.request().isGranted ||
        await Permission.photos.request().isGranted &&
            await Permission.videos.request().isGranted) {
      return true;
    }
    return false;
  }

  handleAlbumChange(Album value) async {
    await state.selectedAlbum!.listMedia().then((medium) {
      emit(state.copyWith(
          selectedAlbumPage: medium.items,
          selectedImage: medium.items.firstOrNull,
          selectedAlbum: value));
    });
  }

  handleImageChange(Medium value) {
    emit(state.copyWith(selectedImage: value));
    if (scrollController.hasClients) {
      scrollController.animateTo(0,
          duration: const Duration(milliseconds: 300),
          curve: Curves.decelerate);
    }
  }

  handleNextClick() async {
    EasyLoading.show(
        status: "Please wait...", maskType: EasyLoadingMaskType.black);
    await cropImage();
    EasyLoading.dismiss();
    Modular.to.pushNamed(AddPostRoute.publish);
  }

  Future<void> cropImage() async {
    if (state.selectedImage != null) {
      final file = await state.selectedImage?.getFile();

      if (file != null) {
        final croppedFile = await cropImageFileInIsolate(file);
        emit(state.copyWith(image: croppedFile));
      }
    }
  }

  Future<Uint8List> cropImageFileInIsolate(File imageFile) async {
    return await compute(cropImageFile, {
      'imageFile': imageFile,
      'alignment': alignment,
    });
  }

  onAlignmentUpdate(Alignment alignment) {
    this.alignment = alignment;
  }

  void updateCaption(String value) {
    emit(state.copyWith(caption: value));
  }

  shareClick() async {
    if (state.image != null) {
      emit(state.copyWith(isLoading: true));
      EasyLoading.show(
          status: "Publishing...", maskType: EasyLoadingMaskType.black);
      await _addPostServices
          .createPost(caption: state.caption, image: state.image!)
          .then((value) {
        emit(state.copyWith(isLoading: false));
        if (value.isRight()) {
          Modular.to.pushNamedAndRemoveUntil(HomeRoutes.feeds, (p0) => false);
          Modular.tryGet<HomeCubit>()?.refreshFeed();
        }
      });
      EasyLoading.dismiss();
    }
  }

  @override
  Future<void> close() {
    emit(AddPostState.initial());
    return super.close();
  }
}

Future<Uint8List> cropImageFile(Map<String, Object> data) async {
  final File imageFile = data['imageFile'] as File;
  final Alignment alignment = data['alignment'] as Alignment;

  final List<int> bytes = await imageFile.readAsBytes();

  final img.Image image = img.decodeImage(Uint8List.fromList(bytes))!;

  // Calculate the crop area to maintain a 1:1 aspect ratio
  int size = image.width < image.height ? image.width : image.height;

  double x = (alignment.x + 1.0) * 0.5 * image.width;
  double y = (alignment.y + 1.0) * 0.5 * image.height;

  // Ensure the crop area fits within the image boundaries
  x = x.clamp(0, image.width - size).toDouble();
  y = y.clamp(0, image.height - size).toDouble();

  // Crop the image
  img.Image croppedImage = img.copyCrop(
    image,
    x: x.toInt(),
    y: y.toInt(),
    width: size,
    height: size,
  );

  // Encode the cropped image to bytes
  Uint8List croppedBytes =
      Uint8List.fromList(img.encodeJpg(croppedImage, quality: 30));

  return croppedBytes;
}
