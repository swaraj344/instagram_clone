part of 'sign_up_cubit.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState({
    required String emailOrPhone,
    required String fullName,
    required String userName,
    required String password,
    required bool isLoading,
    required bool showPassword,
    required bool showError,
  }) = _SignUpState;

  factory SignUpState.initial() => const SignUpState(
        emailOrPhone: "",
        fullName: "",
        userName: "",
        password: "",
        isLoading: false,
        showError: false,
        showPassword: false,
      );
}
