import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static ThemeData lightTheme = ThemeData(
    textTheme: TextTheme(
        bodyLarge: GoogleFonts.elMessiri(
            fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
        bodyMedium: GoogleFonts.elMessiri(
            fontSize: 25, fontWeight: FontWeight.w500, color: Colors.black),
        bodySmall: GoogleFonts.elMessiri(
            fontSize: 20, fontWeight: FontWeight.normal, color: Colors.black),
        titleLarge: GoogleFonts.elMessiri(fontSize: 30, color: Colors.black)),
    primaryColor: Color(0xFFB7935F),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        titleTextStyle: GoogleFonts.elMessiri(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black)),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color(0xFFB7935F),
      selectedIconTheme: IconThemeData(color: Colors.black, size: 32),
      unselectedIconTheme: IconThemeData(color: Colors.white, size: 28),
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
      type: BottomNavigationBarType.fixed,
    ),
  );
  static ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          centerTitle: true,
          titleTextStyle: GoogleFonts.elMessiri(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black)));
}
