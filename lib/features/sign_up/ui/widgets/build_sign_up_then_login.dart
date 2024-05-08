import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:med_voy/features/sign_up/logic/sign_up_cubit.dart';

void buildSingUpThenLogin(BuildContext context) {
  if (context.read<SignUpCubit>().formKey.currentState!.validate()) {
    context.read<SignUpCubit>().emitSignUpLoading();
  }
}
