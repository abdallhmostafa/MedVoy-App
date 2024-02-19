import 'package:flutter/material.dart';
import 'package:med_voy/core/helpers/spacing.dart';
import 'package:med_voy/core/theme/app_color.dart';
import 'package:med_voy/core/theme/app_style.dart';
import 'package:med_voy/core/widgets/app_text_form_field.dart';
import 'package:med_voy/features/login/ui/widgets/do_not_have_account.dart';
import 'package:med_voy/features/login/ui/widgets/terms_and_condition_widget.dart';

import '../../../../core/widgets/custom_button.dart';
import '../../../../resources/app_string.dart';

class LoginBodyScreen extends StatefulWidget {
  const LoginBodyScreen({super.key});

  @override
  State<LoginBodyScreen> createState() => _LoginBodyScreenState();
}

final Key formKey = GlobalKey<FormState>();
bool isObscure = true;

class _LoginBodyScreenState extends State<LoginBodyScreen> {
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
          Form(
            key: formKey,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const AppTextFormField(hintText: 'Email'),
                verticalSpace(18),
                AppTextFormField(
                  hintText: 'Password',
                  textInputAction: TextInputAction.done,
                  suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          isObscure = !isObscure;
                        });
                      },
                      child: Icon(
                        isObscure ? Icons.visibility_off : Icons.visibility,
                        color: isObscure ? null : AppColor.primaryBlue,
                      )),
                  isObscure: isObscure,
                ),
                verticalSpace(24),
                Align(
                    alignment: AlignmentDirectional.bottomEnd,
                    child: Text(
                      AppString.forgetPassword,
                      style: AppStyle.f13GrayRegular
                          .copyWith(color: AppColor.primaryBlue),
                    )),
                verticalSpace(40),
                AppCustomButton(
                  text: AppString.login,
                  onPressed: () {},
                ),
                verticalSpace(16),
                const TermsAndConditionWidget(),
                verticalSpace(60),
                const DoNotHaveAccountWidget()
              ],
            ),
          )
        ],
      ),
    );
  }
}
