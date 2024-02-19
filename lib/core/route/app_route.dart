import 'package:flutter/material.dart';
import 'package:med_voy/core/route/custom_route_animation.dart';
import 'package:med_voy/core/route/routes.dart';
import 'package:med_voy/features/login/ui/login_view.dart';
import 'package:med_voy/features/on%20boarding/ui/on_boarding_view.dart';

class AppRouter{

  Route generateRoute(RouteSettings settings){
    final   arguments = settings.arguments;
    switch(settings.name){
      case Routes.onBoardingScreen:
        return CustomRouteAnimation(child: const OnBoardingView());
      case Routes.loginScreen:
        return CustomRouteAnimation(child: const LoginView());
      default:
        return CustomRouteAnimation(child:  Text("No Route Define for ${settings.name}"));


    }
  }
}