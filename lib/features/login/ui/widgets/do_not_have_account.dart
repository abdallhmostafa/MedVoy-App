import 'package:flutter/material.dart';
import 'package:med_voy/core/theme/app_style.dart';
import 'package:med_voy/resources/app_string.dart';

class DoNotHaveAccountWidget extends StatelessWidget {
  const DoNotHaveAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: TextAlign.center,

        text: TextSpan(
          children: <TextSpan>[
            TextSpan(text: AppString.doNotHaveAccount,style:AppStyle.f13DarkBlueW400),
            TextSpan(text: AppString.signUp,style:AppStyle.f13BlueW600)
          ]
        ),);
  }
}
