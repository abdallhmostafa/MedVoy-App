import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:med_voy/core/theme/app_style.dart';
import 'package:med_voy/resources/app_assets.dart';
import 'package:med_voy/resources/app_string.dart';

class DoCLogoAndName extends StatelessWidget {
  const DoCLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          AppAssets.mainLogo,
          
        ),
        SizedBox(
          width: 10.w,
        ),
        Text(
          AppString.medVoy,
          style: AppStyle.f24BlackW700,
        )
      ],
    );
  }
}
