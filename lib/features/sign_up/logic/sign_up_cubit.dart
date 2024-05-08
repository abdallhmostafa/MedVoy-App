import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:med_voy/features/sign_up/data/model/sign_up_request.dart';
import 'package:med_voy/features/sign_up/data/repo/sign_up_repo_impl.dart';
import 'package:med_voy/features/sign_up/logic/sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this._signUpRepoImpl) : super(const SignUpState.initial());
  final SignUpRepoImpl _signUpRepoImpl;
  final formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  void emitSignUpLoading() async {
    emit(const SignUpState.loading());
    final response = await _signUpRepoImpl.signUp(SignUpRequest(
        name: nameController.text,
        email: emailController.text,
        phone: phoneController.text,
        password: passwordController.text,
        gender: 0,
        passwordConfirmation: confirmPasswordController.text));
    response.when(success: (signUpResponse) {
      emit(SignUpState.success(signUpResponse));
    }, failure: (error) {
      emit(SignUpState.error(errorMessage: error.apiErrorModel.message ?? ''));
    });
  }

  @override
  Future<void> close() {
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    phoneController.dispose();
    nameController.dispose();

    return super.close();
  }
}
