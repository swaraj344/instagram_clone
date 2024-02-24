part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required bool isLoading,
    required List<Query$GetFeeds$getFeeds> posts,
  }) = _HomeState;

  factory HomeState.initial() => const HomeState(
        isLoading: false,
        posts: [],
      );
}
