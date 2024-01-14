part of 'base_cubit.dart';

@freezed
class BaseState with _$BaseState {
  const factory BaseState({
    User? currentUser,
  }) = _BaseState;

  factory BaseState.initial() => const BaseState();
}
