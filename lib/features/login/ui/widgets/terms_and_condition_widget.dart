import 'package:flutter/material.dart';
import 'package:med_voy/core/theme/app_style.dart';
import 'package:med_voy/resources/app_string.dart';

class TermsAndConditionWidget extends StatelessWidget {
  const TermsAndConditionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(children: [
          TextSpan(text: AppString.byLogging, style: AppStyle.f13GrayRegular),
          TextSpan(
              text: AppString.termsAndConditions,
              style: AppStyle.f13DarkBlueW500),
          TextSpan(text: AppString.and, style: AppStyle.f13GrayRegular),
          TextSpan(
              text: AppString.privacyPolicy,
              style: AppStyle.f13DarkBlueW500.copyWith(height: 1.6)),
        ]));
  }
}
