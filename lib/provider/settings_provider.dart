import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsProvider extends ChangeNotifier {
  ThemeMode currentTheme = ThemeMode.light;
  Locale currentLocale = const Locale('en');

  void changeTheme(ThemeMode newTheme) {
    if (currentTheme == newTheme) return;
    currentTheme = newTheme;
    saveTheme(newTheme);
    notifyListeners();
  }

  void changeLocale(Locale newLocale) {
    if (currentLocale == newLocale) return;
    currentLocale = newLocale;
    saveLocale(newLocale);
    notifyListeners();
  }

  void saveTheme(ThemeMode themeMode) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    if (themeMode == ThemeMode.light) prefs.setString('theme', 'light');
    if (themeMode == ThemeMode.dark) prefs.setString('theme', 'dark');
  }

  void getTheme() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String theme = prefs.getString('theme') ?? 'light';
    if (theme == 'light') currentTheme = ThemeMode.light;
    if (theme == 'dark') currentTheme = ThemeMode.dark;
    notifyListeners();
  }

  void saveLocale(Locale locale) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    if (locale == const Locale('en')) prefs.setString('lang', 'en');
    if (locale == const Locale('ar')) prefs.setString('lang', 'ar');
  }

  void getLocale() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String locale = prefs.getString('lang') ?? 'en';
    if (locale == 'en') currentLocale = const Locale('en');
    if (locale == 'ar') currentLocale = const Locale('ar');
    notifyListeners();
  }
}
