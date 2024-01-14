import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_clone/core/colors.dart';

abstract class FormHelper {
  static Widget input(
      {required Function(String value)? onChange,
      required String hintText,
      IconData? suffixIcon,
      bool obscureText = false,
      VoidCallback? onSuffixIconClick,
      String? Function(String?)? validator,
      AutovalidateMode? autovalidateMode}) {
    return TextFormField(
      autovalidateMode: autovalidateMode,
      validator: validator,
      style: const TextStyle(
        fontSize: 14,
      ),
      onChanged: onChange,
      obscureText: obscureText,
      decoration: InputDecoration(
          isDense: true,
          contentPadding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 0),
          fillColor: const Color(0xffFAFAFA),
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 0.5,
              color: Color.fromARGB(51, 0, 0, 0),
            ),
            borderRadius: BorderRadius.circular(
              5.r,
            ),
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 0.5,
              color: Color.fromARGB(51, 0, 0, 0),
            ),
            borderRadius: BorderRadius.circular(
              5.r,
            ),
          ),
          hintStyle: TextStyle(
            color: const Color.fromARGB(51, 0, 0, 0),
            fontSize: 14.sp,
          ),
          hintText: hintText,
          suffixIcon: InkWell(
            onTap: onSuffixIconClick,
            child: Icon(
              suffixIcon,
              size: 20.sp,
              color: const Color.fromARGB(51, 0, 0, 0),
            ),
          ),
          errorStyle: TextStyle(
            fontSize: 12.sp,
          )),
    );
  }

  static Widget button({
    required VoidCallback? onTap,
    required String label,
    Widget? prefix,
    bool isLoading = false,
  }) {
    return SizedBox(
      height: 45.h,
      width: double.maxFinite,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.r),
          ),
          textStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
        onPressed: isLoading ? null : onTap,
        child: isLoading
            ? const SizedBox(
                width: 25, height: 25, child: CircularProgressIndicator())
            : Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (prefix != null) prefix,
                  Text(label),
                ],
              ),
      ),
    );
  }
}
