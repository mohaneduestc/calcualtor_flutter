import 'dart:ui';

import 'package:flutter/material.dart';

import './pages/homePage.dart';
import './pages/inputPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF0F1439),
        accentColor: Colors.purple,
        scaffoldBackgroundColor: Color(0xFF0F1439),
        textTheme: TextTheme(
          bodyText1: TextStyle(),
          bodyText2: TextStyle(),
        ).apply(
          bodyColor: Colors.white,
          displayColor: Colors.white,
        ),
      ),
      home: InputPage(),
    );
  }
}
