import 'package:flutter/material.dart';
import 'package:med_voy/core/helpers/spacing.dart';
import 'package:med_voy/core/theme/app_style.dart';
import 'package:med_voy/core/widgets/custom_button.dart';
import 'package:med_voy/features/login/ui/widgets/terms_and_condition_widget.dart';
import 'package:med_voy/features/sign_up/ui/widgets/sign_up_bloc_listener.dart';
import 'package:med_voy/features/sign_up/ui/widgets/sign_up_form.dart';
import 'package:med_voy/resources/app_string.dart';

import 'already_have_account_text.dart';
import 'build_sign_up_then_login.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(AppString.createAccount, style: AppStyle.f24BlueW700),
          verticalSpace(8),
          Text(AppString.signUpNow,
              style:
                  AppStyle.f14GrayW400.copyWith(height: 1.6, wordSpacing: 2)),
          verticalSpace(36),
          const SignUpForm(),
          verticalSpace(40),
          AppCustomButton(
            text: AppString.createAccount,
            onPressed: () {
              buildSingUpThenLogin(context);
            },
          ),
          verticalSpace(16),
          const TermsAndConditionWidget(),
          verticalSpace(30),
          const AlreadyHaveAccountWidget(),
          const BuildSignUpBlocListener()
        ],
      ),
    );
  }
}
