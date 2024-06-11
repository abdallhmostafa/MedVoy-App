import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:med_voy/core/theme/app_color.dart';
import 'package:med_voy/core/theme/app_style.dart';
import 'package:med_voy/resources/app_assets.dart';
import 'package:med_voy/resources/app_string.dart';

class AppCustomError extends StatelessWidget {
  const AppCustomError({super.key, required this.errorMessage});

  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      icon: Lottie.asset(AppAssets.errorJson, width: 100.w, height: 100.h),
      backgroundColor: AppColor.white,
      content: Text(
        errorMessage,
        style: AppStyle.f14DarkBlueMedium,
      ),
      actionsPadding: EdgeInsets.only(right: 16.w, bottom: 16.h),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text(
            AppString.ok,
            style: AppStyle.f14BlueW600,
          ),
        ),
      ],
    );
  }
}
