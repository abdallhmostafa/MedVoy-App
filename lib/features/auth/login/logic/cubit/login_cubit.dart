import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:med_voy/core/helpers/app_constant.dart';
import 'package:med_voy/core/helpers/shared_pref_helper.dart';
import 'package:med_voy/core/network/dio_factory.dart';
import 'package:med_voy/features/auth/login/data/model/login_request_body.dart';
import 'package:med_voy/features/auth/login/data/repos/login_repo_impl.dart';

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

    response.when(success: (loginResponse) async {
      await saveUserToken(loginResponse.userData?.token ?? '');
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

Future<void> saveUserToken(String token) async {
  await SharePrefHelper.setSecuredString(SharedPrefsKey.userToken, token);
  DioFactory.setIntoTokenAfterLogin(token);
}
