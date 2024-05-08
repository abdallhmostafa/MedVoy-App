import 'package:flutter/material.dart';

class AppColor {
  AppColor._();
  static const Color primaryBlue = Color(0xFF247CFF);
  static const Color gray = Color(0xFF757575);
  static const Color darkBlue = Color(0xFF242424);
  static const Color lighterGray = Color(0xFFEDEDED);
  static const Color lightGray = Color(0xFFC2C2C2);
  static const Color veryLightGray = Color(0xFFFDFDFF);
  static const Color white = Colors.white;
  static const Color black = Colors.black;
  static const Color red = Colors.red;
  static const Color green = Colors.green;

  static MaterialColor getMaterialColor(Color color) {
    final int red = color.red;
    final int green = color.green;
    final int blue = color.blue;

    final Map<int, Color> shades = {
      50: Color.fromRGBO(red, green, blue, 0.1),
      100: Color.fromRGBO(red, green, blue, 0.2),
      200: Color.fromRGBO(red, green, blue, 0.3),
      300: Color.fromRGBO(red, green, blue, 0.4),
      400: Color.fromRGBO(red, green, blue, 0.5),
      500: Color.fromRGBO(red, green, blue, 0.6),
      600: Color.fromRGBO(red, green, blue, 0.7),
      700: Color.fromRGBO(red, green, blue, 0.8),
      800: Color.fromRGBO(red, green, blue, 0.9),
      900: Color.fromRGBO(red, green, blue, 1.0),
    };

    return MaterialColor(color.value, shades);
  }
}
