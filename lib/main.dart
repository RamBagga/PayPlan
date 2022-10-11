import 'package:flutter/material.dart';
import 'package:payplan/Screens/IntroductoryScreens/IntroScreen.dart';
import 'package:payplan/Screens/ProfileScreen/ProfileScreen.dart';

import 'Screens/BackgroundScriptClass.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: IntroScreen(),
      ),
    );
  }
}

// og child = BackgroundScriptClass()
