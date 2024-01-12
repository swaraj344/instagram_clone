import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/core/colors.dart';
import 'package:instagram_clone/core/gen/assets.gen.dart';
import 'package:instagram_clone/core/widgets/form_helper.dart';
import 'package:instagram_clone/features/auth/sign_in/cubit/sign_in_cubit.dart';
import 'package:instagram_clone/features/auth/sign_up/sign_up_routes.dart';

class SignInScreen extends StatelessWidget {
  final SignInCubit _signInCubit;
  SignInScreen({super.key}) : _signInCubit = Modular.get<SignInCubit>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 28.w,
          vertical: 52.h,
        ),
        child: Column(
          children: [
            PopupMenuButton(
              itemBuilder: (context) => [
                const PopupMenuItem(
                  child: Text("English"),
                )
              ],
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "English",
                    style: TextStyle(
                        fontSize: 12.sp,
                        color: const Color.fromARGB(102, 0, 0, 0)),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down,
                    size: 20.w,
                    color: const Color.fromARGB(102, 0, 0, 0),
                  )
                ],
              ),
            ),
            BlocBuilder<SignInCubit, SignInState>(
              bloc: _signInCubit,
              builder: (context, state) {
                return Expanded(
                  child: Center(
                    child: Form(
                      key: _signInCubit.formKey,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SvgPicture.asset(
                            Assets.svg.instagramLogo,
                            width: 182.w,
                            height: 49.h,
                          ),
                          SizedBox(
                            height: 40.h,
                          ),
                          FormHelper.input(
                            autovalidateMode: _signInCubit.state.showError
                                ? AutovalidateMode.always
                                : AutovalidateMode.disabled,
                            validator:
                                _signInCubit.validateEmailUserNameOrPhoneField,
                            hintText: "Phone number, email or username",
                            onChange:
                                _signInCubit.onEmailUserNameOrPhoneFieldChange,
                          ),
                          SizedBox(
                            height: 12.h,
                          ),
                          FormHelper.input(
                            autovalidateMode: _signInCubit.state.showError
                                ? AutovalidateMode.always
                                : AutovalidateMode.disabled,
                            validator: _signInCubit.validatePassword,
                            hintText: "Password",
                            onSuffixIconClick:
                                _signInCubit.togglePasswordVisibility,
                            onChange: _signInCubit.onPasswordFieldChange,
                            suffixIcon: state.showpassword
                                ? Icons.visibility
                                : Icons.visibility_off,
                            obscureText: !state.showpassword,
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "Forgot password?",
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: AppColors.primary,
                              ),
                              textAlign: TextAlign.right,
                            ),
                          ),
                          SizedBox(
                            height: 30.h,
                          ),
                          FormHelper.button(
                            onTap: state.isLoading
                                ? null
                                : _signInCubit.signInClicked,
                            label: "Log in",
                          ),
                          SizedBox(
                            height: 38.5.h,
                          ),
                          InkWell(
                            onTap: _signInCubit.signInClicked,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SvgPicture.asset(Assets.svg.facebook),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  "Log in with Facebook",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.primary,
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 40.h,
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
                          const SizedBox(
                            height: 41,
                          ),
                          RichText(
                            text: TextSpan(
                              style: const TextStyle(
                                fontSize: 14,
                              ),
                              children: [
                                const TextSpan(
                                    text: "Don’t have an account? ",
                                    style: TextStyle(
                                        color: Color.fromARGB(102, 0, 0, 0))),
                                TextSpan(
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Modular.to.pushNamed(SignUpRoute.base);
                                      },
                                    text: "Sign up.",
                                    style: const TextStyle(
                                      color: AppColors.primary,
                                    ))
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
