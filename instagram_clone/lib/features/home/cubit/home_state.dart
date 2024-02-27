part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required bool isLoading,
    required List<FeedPost> posts,
  }) = _HomeState;

  factory HomeState.initial() => const HomeState(
        isLoading: false,
        posts: [],
      );
}
