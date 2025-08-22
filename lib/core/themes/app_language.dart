import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/cache/get_storage_helper.dart';


class LanguageProvider extends ChangeNotifier {
  Locale _locale = const Locale('en'); // اللغة الافتراضية

  LanguageProvider() {
    // لما الاب يفتح نقرأ اللغة اللي متخزنة
    String? langCode = GetStorageHelper.getGetStorageData(key: 'lang');
    if (langCode != null) {
      _locale = Locale(langCode);
    }
  }

  Locale get locale => _locale;

   void setLanguage(String langCode) {
    _locale = Locale(langCode);
    GetStorageHelper.setGetStorageData(key: 'lang', value: langCode);
    notifyListeners();
  }

  // void toggleLanguage() {
  //   if (_locale.languageCode == 'ar') {
  //     _locale = const Locale('en');
  //     GetStorageHelper.setGetStorageData(key: 'lang', value: 'en');
  //   } else {
  //     _locale = const Locale('ar');
  //     GetStorageHelper.setGetStorageData(key: 'lang', value: 'ar');
  //   }
  //   notifyListeners();
  // }

}
