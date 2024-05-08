import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:med_voy/features/login/data/model/login_request_body.dart';
import 'package:med_voy/features/login/data/repos/login_repo_impl.dart';

import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepoImpl _loginRepoImpl;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginCubit(this._loginRepoImpl) : super(const LoginState.initial());

  void emitLoadingState() async {
    emit(const LoginState.loading());

    final response = await _loginRepoImpl.login(LoginRequestBody(
        email: emailController.text, password: passwordController.text));

    response.when(success: (loginResponse) {
      emit(LoginState.success(loginResponse));
    }, failure: (error) {
      emit(LoginState.error(errorMessage: error.apiErrorModel.message ?? ''));
    });
  }

  @override
  Future<void> close() {
    emailController.dispose();
    passwordController.dispose();
    return super.close();
  }
}
