import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mas_app/core/constants/app_them.dart';
import 'package:mas_app/core/localization/translation_controller.dart';
import 'package:mas_app/core/localization/translations.dart';
import 'package:mas_app/core/services/services.dart';
import 'package:mas_app/pages_routes.dart';
import 'package:mas_app/view/screens/auth/login_screen.dart';

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
    TranslationControler langController = Get.put(TranslationControler());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: pagesRoutes,
      initialRoute: LogInScreen.id,
      translations: AppTranslations(),
      locale: langController.language,
      theme: AppThem.themeData,
      // home: const OnBoardingScreen(),
    );
  }
}
