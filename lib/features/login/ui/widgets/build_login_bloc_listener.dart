import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:med_voy/core/helpers/extension.dart';
import 'package:med_voy/core/route/routes.dart';
import 'package:med_voy/core/widgets/app_custom_error.dart';
import 'package:med_voy/core/widgets/app_custom_loading.dart';
import 'package:med_voy/features/login/logic/cubit/login_cubit.dart';
import 'package:med_voy/features/login/logic/cubit/login_state.dart';

class BuildLoginBlocListener extends StatelessWidget {
  const BuildLoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is LoginState ||
          current is SuccessState ||
          current is ErrorState,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
                context: context, builder: (_) => const AppCustomLoading());
          },
          success: (loadingResponse) {
            context.pop();
            context.pushReplacementNamed(Routes.homeScreen);
          },
          error: (errorMessage) {
            context.pop();
            showDialog(
                context: context,
                builder: (_) => AppCustomError(errorMessage: errorMessage));
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
