import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'HomeScreen.dart';
import 'core/provider/AppProvider.dart';

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
    var appProvider = Provider.of<AppProvider>(context);
    return Scaffold(
      body: Image.asset(
        appProvider.isDark()
            ? 'assets/images/splash-dark.png'
            : 'assets/images/splash.png',
        width: mediaQuery.width,
        height: mediaQuery.height,
        fit: BoxFit.cover,
      ),
    );
  }
}
