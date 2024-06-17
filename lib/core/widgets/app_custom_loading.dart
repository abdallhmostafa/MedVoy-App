import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:med_voy/resources/app_assets.dart';

class AppCustomLoading extends StatelessWidget {
  const AppCustomLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Lottie.asset(AppAssets.loadingJson, height: 100.h));
  }
}
