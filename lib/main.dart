import 'package:flutter/material.dart';
import 'package:islami_app/HomeScreen.dart';
import 'package:islami_app/core/theme/myThemeData.dart';
import 'package:islami_app/splashScreen.dart';

void main() {
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: MyThemeData.lightTheme,
        darkTheme: MyThemeData.darkTheme,
        themeMode: ThemeMode.light,
        initialRoute: splashScreen.routeName,
        routes: {
          HomeScreen.routeName: (context) => HomeScreen(),
          splashScreen.routeName: (context) => const splashScreen()
        });
  }
}
