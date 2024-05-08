import 'package:flutter/material.dart';
import 'package:med_voy/core/helpers/spacing.dart';
import 'package:med_voy/core/theme/app_color.dart';
import 'package:med_voy/core/theme/app_style.dart';

class BuildValidationRowWidget extends StatelessWidget {
  const BuildValidationRowWidget(
      {super.key, required this.text, required this.hasValidated});

  final String text;
  final bool hasValidated;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
            radius: 2.5,
            backgroundColor: hasValidated ? AppColor.green : AppColor.gray),
        horizontalSpace(6),
        Text(
          text,
          style: AppStyle.f13DarkBlueW400.copyWith(
            decoration:
                hasValidated ? TextDecoration.lineThrough : TextDecoration.none,
            decorationColor: AppColor.green,
            decorationThickness: 2,
            color: hasValidated ? AppColor.gray : AppColor.darkBlue,
          ),
        )
      ],
    );
  }
}
