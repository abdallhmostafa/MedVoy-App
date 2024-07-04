import 'package:flutter/material.dart';
import 'package:med_voy/core/network/api_error_handler.dart';
import 'package:med_voy/core/theme/app_style.dart';

Widget setError(ErrorHandler errorHandler) {
  return Text(
    errorHandler.apiErrorModel.message ?? "",
    style: AppStyle.f14DarkBlueMedium,
  );
}
