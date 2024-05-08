import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:med_voy/core/helpers/app_regex.dart';
import 'package:med_voy/core/helpers/spacing.dart';
import 'package:med_voy/core/theme/app_color.dart';
import 'package:med_voy/core/widgets/app_text_form_field.dart';
import 'package:med_voy/core/widgets/password_validation.dart';
import 'package:med_voy/features/sign_up/logic/sign_up_cubit.dart';
import 'package:med_voy/resources/app_string.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  bool isPasswordObscure = true;
  bool isPasswordConformationObscure = true;

  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasSpecialCharacter = false;
  bool hasNumber = false;
  bool hasMinLength = false;
  bool isPhoneNumberValid = false;
  late TextEditingController passwordController;

  @override
  void initState() {
    passwordController = context.read<SignUpCubit>().passwordController;
    setupPasswordControllerListener();
    super.initState();
  }

  void setupPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasLowerCase = AppRegex.hasLowerCase(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasSpecialCharacter =
            AppRegex.hasSpecialCharacter(passwordController.text);
        hasUpperCase = AppRegex.hasUpperCase(passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SignUpCubit>().formKey,
      
      child: Column(
        children: [
          AppTextFormField(
              controller: context.read<SignUpCubit>().nameController,
              hintText: 'Name',
              validator: (value) {
                if (value!.isEmpty) {
                  return AppString.enterName;
                }
              }),
          verticalSpace(18),
          AppTextFormField(
              textInputType: TextInputType.phone,
              controller: context.read<SignUpCubit>().phoneController,
              hintText: 'Phone Number',
              validator: (value) {
                if (value!.isEmpty || !AppRegex.isPhoneNumberValid(value)) {
                  return AppString.enterValidPhoneNumber;
                }
              }),
          verticalSpace(18),
          AppTextFormField(
              controller: context.read<SignUpCubit>().emailController,
              hintText: 'Email',
              textInputType: TextInputType.emailAddress,
              validator: (value) {
                if (value!.isEmpty || !AppRegex.isEmailValid(value)) {
                  return AppString.enterValidEmail;
                }
              }),
          verticalSpace(18),
          AppTextFormField(
            controller: context.read<SignUpCubit>().passwordController,
            validator: (value) {
              if (value!.isEmpty) {
                return AppString.enterValidPassword;
              }
            },
            hintText: 'Password',
            textInputAction: TextInputAction.next,
            suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    isPasswordObscure = !isPasswordObscure;
                  });
                },
                child: Icon(
                    isPasswordObscure ? Icons.visibility_off : Icons.visibility,
                    color: isPasswordObscure ? null : AppColor.primaryBlue)),
            isObscure: isPasswordObscure,
          ),
          verticalSpace(18),
          AppTextFormField(
            controller: context.read<SignUpCubit>().confirmPasswordController,
            validator: (value) {
              if (value!.isEmpty) {
                return AppString.enterValidPassword;
              } else if (context
                      .read<SignUpCubit>()
                      .confirmPasswordController
                      .text
                      .hashCode !=
                  context
                      .read<SignUpCubit>()
                      .passwordController
                      .text
                      .hashCode) {
                return AppString.twoPasswordNotValid;
              }
            },
            hintText: 'Password Confirmation',
            textInputAction: TextInputAction.done,
            suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    isPasswordConformationObscure =
                        !isPasswordConformationObscure;
                  });
                },
                child: Icon(
                    isPasswordConformationObscure
                        ? Icons.visibility_off
                        : Icons.visibility,
                    color: isPasswordConformationObscure
                        ? null
                        : AppColor.primaryBlue)),
            isObscure: isPasswordConformationObscure,
          ),
          verticalSpace(24),
          PasswordValidation(
              hasLowerCase: hasLowerCase,
              hasMinLength: hasMinLength,
              hasNumber: hasNumber,
              hasSpecialCharacter: hasSpecialCharacter,
              hasUpperCase: hasUpperCase),
        ],
      ),
    );
  }

  // @override
  // void dispose() {
  //   passwordController.dispose();
  //   super.dispose();
  // }
}
