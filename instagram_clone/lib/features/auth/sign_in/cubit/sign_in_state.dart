part of 'sign_in_cubit.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState({
    required String phoneOrEmailOrUserName,
    required String password,
    required bool isLoading,
    required bool showError,
    required bool showpassword,
  }) = _SignInState;

  factory SignInState.initial() => const SignInState(
        phoneOrEmailOrUserName: "",
        password: "",
        isLoading: false,
        showError: false,
        showpassword: false,
      );
}
