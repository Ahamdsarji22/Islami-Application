import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static ThemeData lightTheme = ThemeData(
    iconTheme: IconThemeData(color: Colors.black),
    dividerTheme: DividerThemeData(
      color: Color(0xFFB7935F),
      thickness: 2,
    ),
    textTheme: TextTheme(
        bodyLarge: GoogleFonts.elMessiri(
            fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
        bodyMedium: GoogleFonts.elMessiri(
            fontSize: 25, fontWeight: FontWeight.w500, color: Colors.black),
        bodySmall: GoogleFonts.elMessiri(
            fontSize: 20, fontWeight: FontWeight.normal, color: Colors.black),
        titleLarge: GoogleFonts.kufam(fontSize: 24, color: Colors.black)),
    primaryColor: Color(0xFFB7935F),
    colorScheme: ColorScheme.fromSeed(
        seedColor: Color(0xFFB7935F),
        primary: Color(0xFFB7935F),
        onSecondary: Color(0xFFB7935F),
        primaryContainer: Color(0xFFF3F3F3)),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        titleTextStyle: GoogleFonts.elMessiri(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black)),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedLabelStyle: TextStyle(
        fontSize: 12,
      ),
      showUnselectedLabels: false,
      backgroundColor: Color(0xFFB7935F),
      // Color(0xFFB7935F),
      selectedIconTheme: IconThemeData(color: Colors.black, size: 30),
      unselectedIconTheme: IconThemeData(color: Colors.white, size: 40),
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
      type: BottomNavigationBarType.fixed,
    ),
  );
  static ThemeData darkTheme = ThemeData(
    iconTheme: IconThemeData(color: Color(0xFFFACC1D)),
    dividerTheme: DividerThemeData(
      color: Color(0xFFFACC1D),
      thickness: 2,
    ),
    textTheme: TextTheme(
        bodyLarge: GoogleFonts.elMessiri(
            fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        bodyMedium: GoogleFonts.elMessiri(
            fontSize: 25, fontWeight: FontWeight.w500, color: Colors.white),
        bodySmall: GoogleFonts.elMessiri(
            fontSize: 20,
            fontWeight: FontWeight.normal,
            color: Color(0xFFFACC1D)),
        titleLarge: GoogleFonts.elMessiri(fontSize: 30, color: Colors.white)),
    primaryColor: Color(0xFF141A2E),
    colorScheme: ColorScheme.fromSeed(
      seedColor: Color(0xFF141A2E),
      primary: Color(0xFF141A2E),
      onSecondary: Color(0xFFFACC1D),
      primaryContainer: Color(0xFF141A2E),
    ),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        titleTextStyle: GoogleFonts.elMessiri(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white)),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedLabelStyle: TextStyle(fontSize: 12),
      showUnselectedLabels: false,
      backgroundColor: Color(0xFF141A2E),
      selectedIconTheme: IconThemeData(color: Color(0xFFFACC1D), size: 37),
      unselectedIconTheme: IconThemeData(color: Colors.white, size: 37),
      selectedItemColor: Color(0xFFFACC1D),
      unselectedItemColor: Colors.black,
      type: BottomNavigationBarType.fixed,
    ),
  );
}
