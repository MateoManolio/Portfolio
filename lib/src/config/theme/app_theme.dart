import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class AppTheme {
  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.black,
      scaffoldBackgroundColor: Colors.black,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.black,
        elevation: 4,
      ),
      colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.white),
    );
  }

  static ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.white,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        elevation: 4,
      ),
      colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.black),
    );
  }

  static Future<ThemeData> getTheme() async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    final bool darkMode = preferences.getBool('darkMode') ?? false;
    return darkMode ? darkTheme : lightTheme;
  }
}
