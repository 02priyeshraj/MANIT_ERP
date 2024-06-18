import 'package:flutter/material.dart';

class GlobalVariables {
  // COLORS
  static const appGradient = LinearGradient(
    colors: [
      Color(0xFFA0B6F5),
      Color(0xFF33425B),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    transform: GradientRotation(65 * 3.1415927 / 180),
  );
  static const splashScreenTextColor = Color(0xFF6DCFF6);
  static const textBackgroundColor = Color(0xFF6789CA);
  static const buttonColor = Color(0xFFA0B6F5);
  static const backgroundColor = Colors.white;
  static const navBarHomeBgColor = Color(0xFF539DF3);
  static const blackColor = Colors.black;
  static const navBarTextColor = Color(0xFF777777);
  static const lightBlackColor = Color(0xFFA5A5A5);
  static const transparent = Colors.transparent;
}
