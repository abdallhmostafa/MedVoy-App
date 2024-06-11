import 'package:flutter/material.dart';
import 'package:med_voy/core/helpers/spacing.dart';
import 'package:med_voy/core/theme/app_color.dart';
import 'package:med_voy/core/theme/app_style.dart';
import 'package:med_voy/features/auth/login/ui/widgets/do_not_have_account.dart';
import 'package:med_voy/features/auth/login/ui/widgets/terms_and_condition_widget.dart';

import '../../../../../core/widgets/custom_button.dart';
import '../../../../../resources/app_string.dart';
import 'build_login_bloc_listener.dart';
import 'build_validate_and_login.dart';
import 'email_and_password.dart';

class LoginBodyScreen extends StatelessWidget {
  const LoginBodyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(AppString.welcomeBack, style: AppStyle.f24BlueW700),
          verticalSpace(8),
          Text(AppString.weAreExcited,
              style:
                  AppStyle.f14GrayW400.copyWith(height: 1.6, wordSpacing: 2)),
          verticalSpace(36),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const EmailAndPassword(),
              verticalSpace(24),
              Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: Text(AppString.forgetPassword,
                      style: AppStyle.f13GrayRegular
                          .copyWith(color: AppColor.primaryBlue))),
              verticalSpace(40),
              AppCustomButton(
                text: AppString.login,
                onPressed: () {
                  buildValidateAndLogin(context);
                },
              ),
              verticalSpace(16),
              const TermsAndConditionWidget(),
              verticalSpace(60),
              const DoNotHaveAccountWidget(),
              const BuildLoginBlocListener(),
            ],
          )
        ],
      ),
    );
  }
}
