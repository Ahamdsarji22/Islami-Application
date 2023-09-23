import 'dart:async';

import 'package:flutter/material.dart';

import 'HomeScreen.dart';

class splashScreen extends StatelessWidget {
  const splashScreen({super.key});

  static const String routeName = 'splashScreen';

  @override
  Widget build(BuildContext context) {
    Timer(
      Duration(seconds: 2),
      () {
        Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
      },
    );
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: Image.asset(
        'assets/images/splash.png',
        width: mediaQuery.width,
        height: mediaQuery.height,
        fit: BoxFit.cover,
      ),
    );
  }
}
