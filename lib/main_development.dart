import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:med_voy/bloc_observer.dart';
import 'package:med_voy/core/route/app_route.dart';
import 'package:med_voy/core/utilities/check_user_Logged_in.dart';
import 'package:med_voy/med_voy_app.dart';
import 'core/di/dependency_injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  await ScreenUtil.ensureScreenSize();
  await checkUserLoggedIn();

  Bloc.observer = SimpleBlocObserver();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(
    MedVoyApp(
      appRouter: AppRouter(),
    ),
  );
}
