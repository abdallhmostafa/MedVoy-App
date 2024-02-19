import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:med_voy/core/route/app_route.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:med_voy/core/route/routes.dart';
import 'package:med_voy/core/theme/app_color.dart';

class MedVoyApp extends StatelessWidget {
  const MedVoyApp({super.key, required this.appRouter});

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
      statusBarColor: Colors.transparent,
    ));
    return ScreenUtilInit(
      splitScreenMode: true,
      minTextAdapt: true,
      designSize: const Size(375, 812),
      child: MaterialApp(
        theme: ThemeData(
            colorScheme: ThemeData().colorScheme.copyWith(
                  secondary: AppColor.primaryBlue,
                  onPrimary: AppColor.primaryBlue,
                ),
            primaryColor: AppColor.primaryBlue,
            primaryIconTheme: const IconThemeData(
              color: AppColor.primaryBlue,
            ),
            primarySwatch: AppColor.getMaterialColor(AppColor.primaryBlue),
            scaffoldBackgroundColor: AppColor.white),
        title: 'MedVoy',
        debugShowCheckedModeBanner: false,
        onGenerateRoute: appRouter.generateRoute,
        initialRoute: Routes.onBoardingScreen,
      ),
    );
  }
}
