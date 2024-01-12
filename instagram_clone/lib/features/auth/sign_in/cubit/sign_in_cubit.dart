import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:instagram_clone/core/form_util_extension.dart';
import 'package:instagram_clone/features/auth/auth_services/i_auth_services.dart';

part 'sign_in_state.dart';
part 'sign_in_cubit.freezed.dart';

class SignInCubit extends Cubit<SignInState> {
  final IAuthServices _authServices;
  SignInCubit(this._authServices) : super(SignInState.initial());

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  initialValue() {
    print(state);
  }

  onEmailUserNameOrPhoneFieldChange(String value) {
    emit(state.copyWith(phoneOrEmailOrUserName: value));
  }

  onPasswordFieldChange(String value) {
    emit(state.copyWith(password: value));
  }

  togglePasswordVisibility() {
    emit(state.copyWith(showpassword: !state.showpassword));
  }

  String? validateEmailUserNameOrPhoneField(String? input) {
    if (input == null) return null;
    if (input.isEmail || input.isUserName || input.isPhone) {
      return null;
    } else {
      return "Invalid Email or username";
    }
  }

  String? validatePassword(String? input) {
    if (input != null && input.length >= 8) return null;
    return "Password should be at least 8 characters long.";
  }

  signInClicked() async {
    if (formKey.currentState?.validate() ?? false) {
      emit(state.copyWith(isLoading: true, showError: true));
      await _authServices
          .signIn(
              emailOrUsernameOrPhone: state.phoneOrEmailOrUserName,
              password: state.password)
          .then((value) {
        if (value.isRight()) {
          Modular.to.pushNamedAndRemoveUntil('/', (p0) => false);
        }
        print(value);
      });
      emit(state.copyWith(isLoading: false));
    } else {
      emit(state.copyWith(
        showError: true,
      ));
    }
  }
}
