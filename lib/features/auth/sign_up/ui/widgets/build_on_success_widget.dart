import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:med_voy/core/helpers/extension.dart';
import 'package:med_voy/core/route/routes.dart';
import 'package:med_voy/core/theme/app_color.dart';
import 'package:med_voy/core/theme/app_style.dart';
import 'package:med_voy/resources/app_assets.dart';
import 'package:med_voy/resources/app_string.dart';

class BuildOnSuccessWidget extends StatelessWidget {
  const BuildOnSuccessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      icon: Lottie.asset(AppAssets.successJson, width: 100.w, height: 100.h),
      backgroundColor: AppColor.white,
      // title: Text(
      //   AppString.signUpSuccess,
      //   style: AppStyle.f14DarkBlueMedium.copyWith(fontSize: 16.sp),
      // ),

      content: Center(
        child: Text(
          AppString.signUpSuccess,
          style: AppStyle.f14DarkBlueMedium,
        ),
      ),
      actionsPadding: EdgeInsets.only(right: 16.w, bottom: 16.h),
      actions: [
        TextButton(
          onPressed: () => context.pushReplacementNamed(Routes.loginScreen),
          child: Text(
            AppString.letLogin,
            style: AppStyle.f14BlueW600,
          ),
        ),
      ],
    );
  }
}
