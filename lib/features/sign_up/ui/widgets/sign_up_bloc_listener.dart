import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:med_voy/core/helpers/extension.dart';
import 'package:med_voy/core/widgets/app_custom_error.dart';
import 'package:med_voy/core/widgets/app_custom_loading.dart';
import 'package:med_voy/features/sign_up/logic/sign_up_cubit.dart';
import 'package:med_voy/features/sign_up/logic/sign_up_state.dart';
import 'package:med_voy/features/sign_up/ui/widgets/build_on_success_widget.dart';

class BuildSignUpBlocListener extends StatelessWidget {
  const BuildSignUpBlocListener({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpCubit, SignUpState>(
      listenWhen: (previous, current) =>
          current is LoadingState ||
          current is SuccessState ||
          current is ErrorState,
      listener: (context, state) => state.whenOrNull(
        loading: () => showDialog(
            context: context, builder: (_) => const AppCustomLoading()),
        success: (signUpResponse) {
          context.pop();
          return showDialog(
              context: context, builder: (_) => const BuildOnSuccessWidget());
        },
        error: (errorMessage) {
          context.pop();

          return showDialog(
              context: context,
              builder: (_) => AppCustomError(errorMessage: errorMessage));
        },
      ),
      child: const SizedBox.shrink(),
    );
  }
}
