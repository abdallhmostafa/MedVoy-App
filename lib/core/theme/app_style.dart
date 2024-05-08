import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:med_voy/core/helpers/app_font_weight.dart';
import 'package:med_voy/core/theme/app_color.dart';

class AppStyle {
  static TextStyle f13GrayRegular = TextStyle(
    fontSize: 13.sp,
    // overflow: TextOverflow.ellipsis,
    color: AppColor.gray,
  );
  static TextStyle f13DarkBlueW400 = TextStyle(
    fontSize: 13.sp,
    fontWeight: AppFontWeight.w400,
    color: AppColor.darkBlue,
  );
  static TextStyle f13DarkBlueW500 = TextStyle(
    fontSize: 13.sp,
    fontWeight: AppFontWeight.w500,
    color: AppColor.darkBlue,
  );
  static TextStyle f13BlueW600 = TextStyle(
    fontSize: 13.sp,
    fontWeight: AppFontWeight.w600,
    color: AppColor.primaryBlue,
  );
  static TextStyle f14GrayW400 = TextStyle(
    fontSize: 14.sp,
    // overflow: TextOverflow.ellipsis,
    fontWeight: AppFontWeight.w400,
    color: AppColor.gray,
  );
  static TextStyle f14DarkBlueMedium = TextStyle(
    fontSize: 14.sp,
    // overflow: TextOverflow.ellipsis,
    fontWeight: AppFontWeight.w500,
    color: AppColor.darkBlue,
  );
  static TextStyle f14LightGrayW400 = TextStyle(
    fontSize: 14.sp,
    // overflow: TextOverflow.ellipsis,
    fontWeight: AppFontWeight.w400,
    color: AppColor.lightGray,
  );

  static TextStyle f14BlueW600 = TextStyle(
    fontSize: 14.sp,
    fontWeight: AppFontWeight.w600,
    color: AppColor.primaryBlue,
  );
  static TextStyle f16WhiteW600 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: AppColor.white,
  );
  static TextStyle f24BlackW700 = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 24.sp,
    color: AppColor.black,
  );

  static TextStyle f24BlueW700 = TextStyle(
    fontSize: 24.sp,
    fontWeight: AppFontWeight.w700,
    color: AppColor.primaryBlue,
  );

  static TextStyle f32BlueBold = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 32.sp,
    color: AppColor.primaryBlue,
  );
}
