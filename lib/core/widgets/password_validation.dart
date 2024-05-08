import 'package:flutter/material.dart';
import 'package:med_voy/core/helpers/spacing.dart';
import 'package:med_voy/core/widgets/build_validation_row_widget.dart';
import 'package:med_voy/resources/app_string.dart';

class PasswordValidation extends StatelessWidget {
  const PasswordValidation(
      {super.key,
      required this.hasLowerCase,
      required this.hasUpperCase,
      required this.hasSpecialCharacter,
      required this.hasNumber,
      required this.hasMinLength});

  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialCharacter;
  final bool hasNumber;
  final bool hasMinLength;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BuildValidationRowWidget(
            text: AppString.atLeast1LowerCase, hasValidated: hasLowerCase),
        verticalSpace(2),
        BuildValidationRowWidget(
            text: AppString.atLeast1UpperCase, hasValidated: hasUpperCase),
        verticalSpace(2),
        BuildValidationRowWidget(
            text: AppString.atLeast1Special, hasValidated: hasSpecialCharacter),
        verticalSpace(2),
        BuildValidationRowWidget(
            text: AppString.atLeast1Num, hasValidated: hasNumber),
        verticalSpace(2),
        BuildValidationRowWidget(
            text: AppString.atLeast8Ch, hasValidated: hasMinLength),
      ],
    );
  }
}
