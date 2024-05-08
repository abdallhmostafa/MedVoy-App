import 'package:flutter/material.dart';
import 'package:med_voy/core/helpers/extension.dart';
import 'package:med_voy/core/route/routes.dart';
import 'package:med_voy/core/theme/app_style.dart';
import 'package:med_voy/resources/app_string.dart';

class AlreadyHaveAccountWidget extends StatelessWidget {
  const AlreadyHaveAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        elevation: 0,
      ),
      onPressed: () {
        context.pushReplacementNamed(Routes.loginScreen);
      },
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(children: <TextSpan>[
          TextSpan(
              text: AppString.alreadyHaveAccount,
              style: AppStyle.f13DarkBlueW400),
          TextSpan(text: AppString.signUp, style: AppStyle.f13BlueW600)
        ]),
      ),
    );
  }
}
