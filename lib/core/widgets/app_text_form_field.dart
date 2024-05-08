import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:med_voy/core/theme/app_color.dart';
import 'package:med_voy/core/theme/app_style.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    super.key,
    this.focusBorder,
    this.enabledBorder,
    this.inputTextsStyle,
    this.hintStyle,
    required this.hintText,
    this.isObscure,
    this.suffixIcon,
    this.contentPadding,
    this.textInputAction,
    this.controller,
    required this.validator,
    this.textInputType,
  });

  final InputBorder? focusBorder;
  final TextInputType? textInputType;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextsStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isObscure;
  final Widget? suffixIcon;
  final TextInputAction? textInputAction;
  final EdgeInsets? contentPadding;
  final TextEditingController? controller;
  final Function(String?) validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      cursorColor: AppColor.primaryBlue,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      textInputAction: textInputAction ?? TextInputAction.next,
      decoration: InputDecoration(
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(vertical: 18.h, horizontal: 20.w),
        focusedBorder: focusBorder ??
            const OutlineInputBorder(
                borderSide: BorderSide(color: AppColor.primaryBlue, width: 1.3),
                borderRadius: BorderRadius.all(Radius.circular(16.0))),
        enabledBorder: enabledBorder ??
            const OutlineInputBorder(
                borderSide: BorderSide(color: AppColor.lighterGray, width: 1.3),
                borderRadius: BorderRadius.all(Radius.circular(16.0))),
        errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColor.red, width: 1.3),
            borderRadius: BorderRadius.all(Radius.circular(16.0))),
        focusedErrorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColor.red, width: 1.3),
            borderRadius: BorderRadius.all(Radius.circular(16.0))),
        hintStyle: hintStyle ?? AppStyle.f14LightGrayW400,
        hintText: hintText,
        filled: true,
        fillColor: AppColor.veryLightGray,
        suffixIcon: suffixIcon,
      ),
      obscureText: isObscure ?? false,
      style: AppStyle.f14DarkBlueMedium,
      keyboardType: textInputType,
      validator: (value) => validator(value),
    );
  }
}
