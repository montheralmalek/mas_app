import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mas_app/core/localization/app_languages.dart';
import 'package:mas_app/core/services/services.dart';

class LocalizationControler extends GetxController {
  Locale? language;
  AppServices appServices = Get.find();
  //
  changwLanguage(String langCode) {
    Locale locale = Locale(langCode);
    appServices.sharedPreferences.setString('lang', langCode);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? lang = appServices.sharedPreferences.getString('lang');
    String? localLang = Get.deviceLocale!.languageCode;
    if (lang == Applaguages.ar) {
      language = const Locale(Applaguages.ar);
    } else if (lang == Applaguages.en) {
      language = const Locale(Applaguages.en);
    } else if (localLang == Applaguages.ar || localLang == Applaguages.en) {
      // print(localLang);
      language = Locale(localLang);
    } else {
      language = const Locale(Applaguages.en);
    }
    super.onInit();
  }
}
