part of 'add_post_cubit.dart';

@freezed
class AddPostState with _$AddPostState {
  const factory AddPostState({
    required bool isLoading,
    required String caption,
    required String location,
    required List<Album> albums,
    required List<Medium> selectedAlbumPage,
    required Album? selectedAlbum,
    required Medium? selectedImage,
    required bool gettingAlbumLoading,
    Uint8List? image,
  }) = _AddPostState;

  factory AddPostState.initial() => const AddPostState(
        isLoading: false,
        caption: "",
        location: "",
        albums: [],
        selectedAlbumPage: [],
        selectedAlbum: null,
        selectedImage: null,
        gettingAlbumLoading: true,
      );
}
