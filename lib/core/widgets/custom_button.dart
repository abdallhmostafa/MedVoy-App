import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:med_voy/core/theme/app_color.dart';
import 'package:med_voy/core/theme/app_style.dart';

class AppCustomButton extends StatelessWidget {
  const AppCustomButton({super.key, required this.text, required this.onPressed});
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: Size(double.maxFinite, 52.h),
        backgroundColor: AppColor.primaryBlue,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16.0))
        ),
        side:const  BorderSide(
           color: AppColor.primaryBlue,
          width: 1.0,
        ),
          padding: EdgeInsets.symmetric(horizontal: 12.w,vertical: 14.h),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap
      ),
      child: Text(text,style: AppStyle.f16WhiteW600,),
    );
  }
}
