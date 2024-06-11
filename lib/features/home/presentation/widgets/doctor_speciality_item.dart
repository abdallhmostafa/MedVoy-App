import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:med_voy/core/helpers/spacing.dart';
import 'package:med_voy/core/theme/app_color.dart';
import 'package:med_voy/core/theme/app_style.dart';

class DoctorSpecialityItem extends StatelessWidget {
  const DoctorSpecialityItem(
      {super.key, required this.assetName, required this.title});
  final String assetName;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          backgroundColor: AppColor.colorF4F8FF,
          radius: 30,
          child: SvgPicture.asset(assetName),
        ),
        verticalSpace(5),
        Text(title, style: AppStyle.f12DarkBlueRegular)
      ],
    );
  }
}
