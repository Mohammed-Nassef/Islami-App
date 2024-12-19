import 'package:flutter/material.dart';
import 'package:flutter_islami/home_screen.dart';

void main() {
  runApp(islami());
}

class islami extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeScreen.routeName,
      routes: {HomeScreen.routeName: (_) => HomeScreen()},
    );
  }
}
