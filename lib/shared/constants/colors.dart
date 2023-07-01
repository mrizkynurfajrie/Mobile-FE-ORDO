import 'package:flutter/material.dart';

class AppColor {
  //neutral
  static const MaterialColor neutral = MaterialColor(
    _neutral,
    <int, Color>{
      50: Color(0xFFF9FAFB),
      100: Color(0xFFF3F4F6),
      200: Color(0xFFE5E7EB),
      300: Color(0xFFD2D6DB),
      400: Color(0xFF9DA4AE),
      500: Color(0xFF6C737F),
      600: Color(0xFF4D5761),
      700: Color(0xFF384250),
      800: Color(0xFF1F2A37),
      900: Color(_neutral),
    },
  );
  static const int _neutral = 0xFF111927;

  //ACCENT

  //purple
  static const Color lightPurple50 = Color(0xFFF1EFFC);
  static const Color lightPurple100 = Color(0xFFBEA4F3);
  static const Color purple = Color(0xFF7864E6);
  static const Color mainPurple = Color(0xFFC440A6);
  static const Color darkPurple = Color(0xFF8B3A75);

  //red
  static const Color lightRed = Color(0xFFEB73A0);
  static const Color red = Color(0xFFFF5959);
  static const Color orange = Color(0xFFEDAD60);

  //green
  static const Color green1 = Color(0xFF6BF53A);
  static const Color green2 = Color(0xFF75DB73);

  //theme-neutral
  static const Color white = Color(0xFFFFFFFF);
  static const Color gray1 = Color(0xFFF6F6F6);
  static const Color gray2 = Color(0xFFAFA7B2);
  static const Color gray3 = Color(0xFF8D8192);
  static const Color black = Color(0xFF35203F);
}
