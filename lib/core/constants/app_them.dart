import 'package:flutter/material.dart';
import 'package:mas_app/core/constants/app_colors.dart';

class AppThem {
  static ThemeData themeData = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primary,
      primary: AppColors.primary,
      onPrimary: AppColors.onPrimary,
    ),
    scaffoldBackgroundColor: Colors.white,
    fontFamily: 'Cairo',
    textTheme: const TextTheme(
      headlineLarge: TextStyle(color: Colors.black),
      headlineMedium: TextStyle(color: Colors.black),
      headlineSmall: TextStyle(color: Colors.black),
      bodyLarge: TextStyle(),
      bodySmall: TextStyle(),
      bodyMedium: TextStyle(),
      labelLarge: TextStyle(), //button
      labelMedium: TextStyle(),
      labelSmall: TextStyle(),
    ),
    useMaterial3: true,
  );
}
