import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/core/colors.dart';
import 'package:instagram_clone/core/form_util_extension.dart';
import 'package:instagram_clone/features/auth/auth_routes.dart';
import 'package:instagram_clone/features/auth/sign_up/cubit/sign_up_cubit.dart';

import '../../../core/gen/assets.gen.dart';
import '../../../core/widgets/form_helper.dart';

class SignUpScreen extends StatelessWidget {
  final SignUpCubit _signUpCubit;
  SignUpScreen({super.key}) : _signUpCubit = Modular.get<SignUpCubit>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black45,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 28.w,
          // vertical: 52.h,
        ),
        child: BlocBuilder<SignUpCubit, SignUpState>(
          bloc: _signUpCubit,
          builder: (context, state) {
            return Form(
              key: _signUpCubit.formKey,
              child: ListView(
                // mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  SvgPicture.asset(
                    Assets.svg.instagramLogo,
                    width: 182.w,
                    height: 49.h,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "Sign up to see photos and videos\nfrom your friends.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromARGB(102, 0, 0, 0),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  FormHelper.button(
                    onTap: () {},
                    label: "Log in with Facebook",
                    prefix: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: SvgPicture.asset(
                        Assets.svg.facebook,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Divider(
                        color: const Color.fromARGB(51, 0, 0, 0),
                        endIndent: 30.w,
                      )),
                      Text(
                        "OR",
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromARGB(102, 0, 0, 0),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          color: const Color.fromARGB(51, 0, 0, 0),
                          indent: 30.w,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  FormHelper.input(
                    autovalidateMode: state.showError
                        ? AutovalidateMode.always
                        : AutovalidateMode.disabled,
                    validator: (v) {
                      if (v != null && (v.isEmail || v.isPhone)) {
                        return null;
                      } else {
                        return "Invalid Phone or email";
                      }
                    },
                    hintText: "Mobile Number or Email",
                    onChange: _signUpCubit.onPhoneOrEmailFieldChange,
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  FormHelper.input(
                    autovalidateMode: state.showError
                        ? AutovalidateMode.always
                        : AutovalidateMode.disabled,
                    validator: (v) => (v == null || v.isEmpty)
                        ? "Please Enter Full Name"
                        : null,
                    hintText: "Full Name",
                    onChange: _signUpCubit.onFullNameChange,
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  FormHelper.input(
                    autovalidateMode: state.showError
                        ? AutovalidateMode.always
                        : AutovalidateMode.disabled,
                    validator: (p0) =>
                        p0 != null && p0.isUserName ? null : "Invalid UserName",
                    hintText: "Username",
                    onChange: _signUpCubit.onUserNameChange,
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  FormHelper.input(
                    autovalidateMode: state.showError
                        ? AutovalidateMode.always
                        : AutovalidateMode.disabled,
                    validator: (p0) => p0 != null && p0.length >= 8
                        ? null
                        : "Password Length must be of 8-digit",
                    hintText: "Password",
                    onChange: _signUpCubit.onPasswordFieldChange,
                    suffixIcon: state.showPassword
                        ? Icons.visibility
                        : Icons.visibility_off,
                    obscureText: !state.showPassword,
                    onSuffixIconClick: _signUpCubit.onShowPasswordClick,
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  RichText(
                    text: TextSpan(
                      style: const TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(102, 0, 0, 0),
                      ),
                      children: [
                        const TextSpan(
                          text: "By signing up, you agree to ",
                        ),
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // Modular.to.pushNamed(SignUpRoute.base);
                            },
                          text: "our Terms",
                          style: const TextStyle(
                            color: AppColors.primary,
                          ),
                        ),
                        const TextSpan(text: " , "),
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // Modular.to.pushNamed(SignUpRoute.base);
                            },
                          text: "Privacy Policy",
                          style: const TextStyle(
                            color: AppColors.primary,
                          ),
                        ),
                        const TextSpan(text: " and "),
                        const TextSpan(
                          text: "Cookies Policy ",
                          style: TextStyle(
                            color: AppColors.primary,
                          ),
                        ),
                        const TextSpan(text: ".")
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  FormHelper.button(
                    onTap: state.isLoading ? null : _signUpCubit.signUpClicked,
                    label: "Sign up",
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Center(
                    child: RichText(
                      text: TextSpan(
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                        children: [
                          const TextSpan(
                              text: "Have an account? ",
                              style: TextStyle(
                                  color: Color.fromARGB(102, 0, 0, 0))),
                          TextSpan(
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Modular.to.navigate(AuthRoutes.base);
                                },
                              text: "Log in",
                              style: const TextStyle(
                                color: AppColors.primary,
                              ))
                        ],
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
