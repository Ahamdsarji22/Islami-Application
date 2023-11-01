import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppProvider extends ChangeNotifier {
  ThemeMode currentTheme = ThemeMode.system;
  String currentLocale = 'en';
  late final SharedPreferences preferences;

  void init() async {
    preferences = await SharedPreferences.getInstance();
    currentLocale = preferences.getString('language') ?? 'en';

    bool temp = preferences.getBool('mode') ?? false;

    if (temp) {
      currentTheme = ThemeMode.dark;
    } else {
      currentTheme = ThemeMode.light;
    }
  }

  changeTheme(ThemeMode newTheme) async {
    if (currentTheme == newTheme) {
      return;
    } else {
      currentTheme = newTheme;
    }
    await preferences.setBool(
        'mode', newTheme == ThemeMode.dark ? true : false);

    notifyListeners();
  }

  bool isDark() {
    return currentTheme == ThemeMode.dark;
  }

  changeLocale(String locale) async {
    if (currentLocale == locale) {
      return;
    } else {
      currentLocale = locale;
    }
    await preferences.setString('language', locale);
    notifyListeners();
  }
}
