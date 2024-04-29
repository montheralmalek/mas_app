import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mas_app/core/constants/app_them.dart';
import 'package:mas_app/core/localization/localizationController.dart';
import 'package:mas_app/core/localization/translations.dart';
import 'package:mas_app/core/services/services.dart';
import 'package:mas_app/pages_routes.dart';
import 'package:mas_app/view/screens/auth/login_screen.dart';
import 'package:mas_app/view/screens/auth/signup_screen.dart';
import 'package:mas_app/view/screens/auth/verification_screen.dart';
import 'package:mas_app/view/screens/chooseLang/choose_lang_scr.dart';
import 'package:mas_app/view/screens/onboarding/onboarding.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MasApp());
}

class MasApp extends StatelessWidget {
  const MasApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocalizationControler langController = Get.put(LocalizationControler());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: pagesRoutes,
      initialRoute: ChooseLangScr.id,
      translations: AppTranslations(),
      locale: langController.language,
      theme: AppThem.themeData,
      //home: const OnBoardingScreen(),
    );
  }
}
