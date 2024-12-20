import 'package:flutter/material.dart';
import 'package:flutter_islami/home_screen.dart';
import 'package:flutter_islami/app_theme.dart';

void main() {
  runApp(islamiApp());
}

class islamiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {HomeScreen.routeName: (_) => HomeScreen()},
      theme: AppTheme.lightMode,
      darkTheme: AppTheme.darkMode,
      themeMode: ThemeMode.dark,
    );
  }
}
