import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:med_voy/core/di/dependency_injection.dart';
import 'package:med_voy/core/route/custom_route_animation.dart';
import 'package:med_voy/core/route/routes.dart';
import 'package:med_voy/features/home/data/repo/home_specialization_repo.dart';
import 'package:med_voy/features/home/logic/home_cubit.dart';
import 'package:med_voy/features/home/presentation/home_view.dart';
import 'package:med_voy/features/auth/login/logic/cubit/login_cubit.dart';
import 'package:med_voy/features/auth/login/ui/login_view.dart';
import 'package:med_voy/features/on%20boarding/ui/on_boarding_view.dart';
import 'package:med_voy/features/auth/sign_up/logic/sign_up_cubit.dart';
import 'package:med_voy/features/auth/sign_up/ui/sign_up_view.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    // final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return CustomRouteAnimation(child: const OnBoardingView());
      case Routes.homeScreen:
        return CustomRouteAnimation(
            child: BlocProvider(
          create: (context) =>
              HomeCubit(getIt<HomeSpecializationRepo>())..getSpecialization(),
          child: const HomeView(),
        ));

      case Routes.loginScreen:
        return CustomRouteAnimation(
          child: BlocProvider(
              create: (_) => getIt<LoginCubit>(), child: const LoginView()),
        );
      case Routes.signUpScreen:
        return CustomRouteAnimation(
          child: BlocProvider(
              create: (_) => getIt<SignUpCubit>(), child: const SignUpView()),
        );
      default:
        return CustomRouteAnimation(
            child: Scaffold(
                body: Center(
                    child: Text("No Route Define for ${settings.name}"))));
    }
  }
}
