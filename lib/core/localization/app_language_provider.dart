import 'package:flutter/material.dart';

class AppLanguageProvider extends ChangeNotifier {
  Locale _appLocale = const Locale('ar');
  String _nameLang = 'العربية';

  Locale get appLocal => _appLocale;
  String get nameLanguage => _nameLang;
  TextDirection get textDirection =>
      _appLocale.languageCode == 'ar' ? TextDirection.rtl : TextDirection.ltr;

  bool get isArabic => _appLocale.languageCode == 'ar';

  Future<void> fetchLocale() async {

    // final prefs = await SharedPreferences.getInstance();
    // final code = prefs.getString('language_code') ?? 'ar';
    final code = 'ar';
    _appLocale = Locale(code);
    _nameLang = code == 'ar' ? 'العربية' : 'English';
    notifyListeners();
  }


  Future<void> changeLanguage(Locale newLocale) async {
    // if (_appLocale == newLocale) return;
    //
    // _appLocale = newLocale;
    // _nameLang = newLocale.languageCode == 'ar' ? 'العربية' : 'English';
    //
    // final prefs = await SharedPreferences.getInstance();
    // await prefs.setString('language_code', newLocale.languageCode);
    // await prefs.setString('countryCode', newLocale.countryCode ?? '');
    //
    // notifyListeners();
  }
}