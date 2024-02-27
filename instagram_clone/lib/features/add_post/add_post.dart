import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_clone/core/colors.dart';
import 'package:instagram_clone/core/gen/assets.gen.dart';
import 'package:photo_gallery/photo_gallery.dart';

import 'cubit/add_post_cubit.dart';

class AddPostScreen extends StatelessWidget {
  final AddPostCubit _addPostCubit;
  AddPostScreen({super.key}) : _addPostCubit = Modular.get<AddPostCubit>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('New post',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              )),
          leading: IconButton(
              onPressed: () {
                Modular.to.pop();
              },
              icon: const Icon(Icons.close)),
          actions: [
            TextButton(
              onPressed: () {
                _addPostCubit.handleNextClick();
              },
              child: const Text(
                "Next",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
        body: BlocBuilder<AddPostCubit, AddPostState>(
            bloc: _addPostCubit,
            builder: (context, state) {
              return state.gettingAlbumLoading
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : CustomScrollView(
                      controller: _addPostCubit.scrollController,
                      slivers: [
                        SliverToBoxAdapter(
                          child: AspectRatio(
                            aspectRatio: 1,
                            child: state.selectedImage == null
                                ? null
                                : AdjustableImage(
                                    onAlignmentUpdate:
                                        _addPostCubit.onAlignmentUpdate,
                                    image: PhotoProvider(
                                        mediumId: state.selectedImage!.id),
                                    height: state.selectedImage!.height ?? 0,
                                    width: state.selectedImage!.width ?? 0,
                                  ),
                          ),
                        ),
                        SliverAppBar(
                          elevation: 0,
                          pinned: true,
                          automaticallyImplyLeading: false,
                          flexibleSpace: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 12.w),
                            child: Row(
                              children: [
                                DropdownButtonHideUnderline(
                                  child: DropdownButton(
                                      style: TextStyle(
                                        fontSize: 20.sp,
                                        color: AppColors.iconColor,
                                      ),
                                      padding: EdgeInsets.zero,
                                      icon: Icon(
                                        Icons.keyboard_arrow_down,
                                        size: 30.sp,
                                      ),
                                      value: state.selectedAlbum ??
                                          (state.albums.isNotEmpty
                                              ? state.albums.first
                                              : null),
                                      items: state.albums.map((e) {
                                        return DropdownMenuItem(
                                          value: e,
                                          child: Text(e.isAllAlbum
                                              ? "Recents"
                                              : e.name ?? "Unknown"),
                                        );
                                      }).toList(),
                                      onChanged: (value) {
                                        if (value != null) {
                                          _addPostCubit
                                              .handleAlbumChange(value);
                                        }
                                      }),
                                )
                              ],
                            ),
                          ),
                        ),
                        SliverGrid.count(
                          childAspectRatio: 1,
                          crossAxisCount: 4,
                          mainAxisSpacing: 2.0,
                          crossAxisSpacing: 2.0,
                          children: <Widget>[
                            ...state.selectedAlbumPage.map(
                              (medium) {
                                return GestureDetector(
                                  onTap: () {
                                    _addPostCubit.handleImageChange(medium);
                                  },
                                  child: Container(
                                    foregroundDecoration: state.selectedImage ==
                                            medium
                                        ? BoxDecoration(
                                            color:
                                                Colors.white.withOpacity(0.6),
                                          )
                                        : null,
                                    color: Colors.grey[300],
                                    child: FadeInImage(
                                      fit: BoxFit.cover,
                                      placeholder: AssetImage(Assets
                                          .images.profilePlaceholder.path),
                                      image: PhotoProvider(
                                        mediumId: medium.id,
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ],
                    );
            }));
  }
}

class AdjustableImage extends StatefulWidget {
  final ImageProvider<Object> image;
  final int width;
  final int height;
  final Function(Alignment alignment) onAlignmentUpdate;

  const AdjustableImage(
      {super.key,
      required this.image,
      required this.width,
      required this.height,
      required this.onAlignmentUpdate});

  @override
  AdjustableImageState createState() => AdjustableImageState();
}

class AdjustableImageState extends State<AdjustableImage> {
  Alignment _imageAlignment = Alignment.center;

  bool get isVerticalAdjustable {
    double aspectRatio = widget.width.toDouble() / widget.height.toDouble();

    if (aspectRatio == 1) {
      return false;
    }

    return aspectRatio < 0.9;
  }

  bool get isHorizontalAdjustable {
    double aspectRatio = widget.width.toDouble() / widget.height.toDouble();
    if (aspectRatio == 1) {
      return false;
    }
    return aspectRatio > 1.1;
  }

  updateAlignment(DragUpdateDetails details) {
    setState(() {
      // Adjust the alignment based on the slide gestures
      _imageAlignment = Alignment(
        _imageAlignment.x -
            (details.delta.dx / MediaQuery.of(context).size.width) * 4,
        _imageAlignment.y -
            (details.delta.dy / MediaQuery.of(context).size.height) * 4,
      );

      _imageAlignment = Alignment(
        _imageAlignment.x.clamp(-1.0, 1.0),
        _imageAlignment.y.clamp(-1.0, 1.0),
      );
    });
    widget.onAlignmentUpdate(_imageAlignment);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.deferToChild,
      onHorizontalDragUpdate: isHorizontalAdjustable ? updateAlignment : null,
      onVerticalDragUpdate: isVerticalAdjustable ? updateAlignment : null,
      child: Image(
        image: widget.image,
        fit: BoxFit.cover,
        alignment: _imageAlignment,
      ),
    );
  }
}
