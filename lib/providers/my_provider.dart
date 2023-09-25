import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyProvider extends ChangeNotifier {
  String local = 'en';
  ThemeMode theme = ThemeMode.light;

  changeTheme(ThemeMode mode) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    theme = mode;
    theme == ThemeMode.light
        ? pref.setBool('isLight', true)
        : pref.setBool('isLight', false);
    notifyListeners();
  }

  changeLanguage(String langCode) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    local = langCode;
    langCode == 'en' ? pref.setBool('isEn', true) : pref.setBool('isEn', false);
    notifyListeners();
  }

  Future<void> loadThemeandLang() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    bool? isLight = pref.getBool('isLight');
    bool? isEn = pref.getBool('isEn');
    if (isLight != null) {
      theme = isLight ? ThemeMode.light : ThemeMode.dark;
      notifyListeners();
    }
    if (isEn != null) {
      local = isEn ? 'en' : 'ar';
      notifyListeners();
    }
  }
}
