import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../config/config_const.dart';
import '../enums/language_enum.dart';
import '../util.dart';

class LocaleProvider with ChangeNotifier {
  Locale _locale = const Locale('en');

  Locale get locale => _locale;

  Language get language => Language.fromString(_locale.languageCode);

  Future<void> initialize() async {
    final prefs = await SharedPreferences.getInstance();
    final languageCode = prefs.getString(ConfigConst.language) ?? 'en';
    _locale = Locale(languageCode);
    notifyListeners();
  }

  void setLocale(Language language) {
    _locale = Locale(language.toString());
    Utils.resetKeys();
    notifyListeners();
    _savePreferences(language);
  }

  Future<void> _savePreferences(Language language) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(ConfigConst.language, language.toString());
  }
}
