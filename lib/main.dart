// @dart=2.9

import 'package:flutter/material.dart';
import 'package:payplan/GsheetComponents/ImportToGsheetClass.dart';
import 'package:payplan/Screens/HomePage.dart';
import 'package:payplan/Screens/IntroductoryScreens/IntroScreen.dart';
import 'package:payplan/SmsComponents/SMSClass.dart';

import 'Screens/HomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: IntroScreen(),
      ),
    );
  }
}
