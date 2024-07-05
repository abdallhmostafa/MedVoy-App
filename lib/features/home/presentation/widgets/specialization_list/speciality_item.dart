import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:med_voy/core/helpers/spacing.dart';
import 'package:med_voy/core/theme/app_color.dart';
import 'package:med_voy/core/theme/app_style.dart';
import 'package:med_voy/resources/app_assets.dart';

class SpecialityItem extends StatelessWidget {
  const SpecialityItem(
      {super.key, required this.title, this.isSelected = false});
  final String title;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        isSelected
            ? AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: AppColor.primaryBlue, width: 2),
                ),
                child: CircleAvatar(
                  backgroundColor: AppColor.colorF4F8FF,
                  radius: 31,
                  child: SvgPicture.asset(
                    AppAssets.specializationSvg,
                    width: 40.w,
                    height: 40.h,
                  ),
                ),
              )
            : CircleAvatar(
                backgroundColor: AppColor.colorF4F8FF,
                radius: 30,
                child: SvgPicture.asset(AppAssets.specializationSvgTwo,
                    width: 40.w, height: 40.h),
              ),
        verticalSpace(6),
        Text(title,
            style:
                isSelected ? AppStyle.f14BlueW600 : AppStyle.f12DarkBlueRegular)
      ],
    );
  }
}
