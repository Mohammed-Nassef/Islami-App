import 'package:flutter/material.dart';

class AppTheme {
  static Color primary = Color(0xffe2be7f);
  static Color black = Color(0xff202020);
  static Color white = Color(0xffffffff);
  static ThemeData lightMode = ThemeData();
  static ThemeData darkMode = ThemeData(
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: primary,
      showSelectedLabels: true,
      showUnselectedLabels: false,
      // selectedLabelStyle: TextStyle(color: white)
      selectedItemColor: white,
    ),
  );
}
