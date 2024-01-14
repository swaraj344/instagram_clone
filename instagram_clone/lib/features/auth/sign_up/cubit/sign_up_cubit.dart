import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:instagram_clone/core/form_util_extension.dart';
import 'package:instagram_clone/data/db/database.dart';
import 'package:instagram_clone/features/auth/auth_services/i_auth_services.dart';
import 'package:instagram_clone/features/home/home_routes.dart';

part 'sign_up_state.dart';
part 'sign_up_cubit.freezed.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final IAuthServices _authServices;

  SignUpCubit(
    this._authServices,
  ) : super(SignUpState.initial());

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  onPhoneOrEmailFieldChange(String phoneOrEmail) {
    if (phoneOrEmail.isEmail) {
      emit(state.copyWith(emailOrPhone: phoneOrEmail));
    }
  }

  onFullNameChange(String fullName) {
    emit(state.copyWith(fullName: fullName));
  }

  onUserNameChange(String userName) {
    emit(state.copyWith(userName: userName));
  }

  onPasswordFieldChange(String password) {
    emit(state.copyWith(password: password));
  }

  onShowPasswordClick() {
    emit(state.copyWith(showPassword: !state.showPassword));
  }

  signUpClicked() async {
    if (formKey.currentState?.validate() ?? false) {
      emit(state.copyWith(isLoading: true, showError: true));

      await _authServices
          .resigterUser(
              userName: state.userName,
              email: state.emailOrPhone,
              password: state.password,
              fullName: state.fullName)
          .then((value) {
        print(value);
      });

      emit(state.copyWith(isLoading: false));
    } else {
      emit(state.copyWith(showError: true));
    }
  }
}
