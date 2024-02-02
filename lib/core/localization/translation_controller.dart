import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mas_app/core/services/services.dart';

class TranslationControler extends GetxController {
  Locale? language;

  AppServices appServices = Get.find();
  changwLanguage(String langCode) {
    Locale locale = Locale(langCode);
    appServices.sharedPreferences.setString('lang', langCode);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? lang = appServices.sharedPreferences.getString('lang');
    String? localLang = Get.deviceLocale!.languageCode;
    if (lang == 'ar') {
      language = const Locale('ar');
    } else if (lang == 'en') {
      language = const Locale('en');
    } else if (localLang == 'ar' || localLang == 'en') {
      // print(localLang);
      language = Locale(localLang);
    } else {
      language = const Locale('en');
    }
    super.onInit();
  }
}
