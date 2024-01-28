import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mas_app/core/constants/app_colors.dart';
import 'package:mas_app/view/screens/onboarding.dart';

void main() {
  runApp(const MasApp());
}

class MasApp extends StatelessWidget {
  const MasApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Cairo',
        useMaterial3: true,
      ),
      home: const OnBoardingScreen(),
    );
  }
}
