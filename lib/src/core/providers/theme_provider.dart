import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../config/config_const.dart';

class ThemeProvider with ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.system;
  bool _isLightMode = true;

  ThemeMode get themeMode => _themeMode;
  bool get isLightMode => _isLightMode;

  Future<void> initialize() async {
    final prefs = await SharedPreferences.getInstance();
    _isLightMode = prefs.getBool(ConfigConst.lightMode) ?? true;
    _themeMode = _isLightMode ? ThemeMode.light : ThemeMode.dark;
    notifyListeners();
  }

  void setTheme(bool isLight) {
    _isLightMode = isLight;
    _themeMode = isLight ? ThemeMode.light : ThemeMode.dark;
    notifyListeners();
    _savePreferences();
  }

  Future<void> _savePreferences() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(ConfigConst.lightMode, _isLightMode);
  }
}
