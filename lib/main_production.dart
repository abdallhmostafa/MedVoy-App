import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:med_voy/core/route/app_route.dart';
import 'package:med_voy/med_voy_app.dart';

import 'core/di/dependency_injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  await ScreenUtil.ensureScreenSize();

  runApp(
    MedVoyApp(
      appRouter: AppRouter(),
    ),
  );
}
