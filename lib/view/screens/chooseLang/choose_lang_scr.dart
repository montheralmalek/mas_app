import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:mas_app/core/constants/app_colors.dart';
import 'package:mas_app/core/localization/app_languages.dart';
import 'package:mas_app/core/localization/localizationController.dart';
import 'package:mas_app/view/screens/onboarding/onboarding.dart';
import 'package:mas_app/view/widgets/custom_button.dart';

class ChooseLangScr extends GetView<LocalizationControler> {
  static const String id = '/';
  const ChooseLangScr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.language,
                  size: 48,
                  color: AppColors.primary,
                ),
                const Gap(10),
                Text(
                  "Choose Language",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const Gap(20),
                CustomButton(
                  onPressed: () {
                    controller.changwLanguage(Applaguages.ar);
                    Get.toNamed(OnBoardingScreen.id);
                  },
                  text: const Text("AR"),
                  width: 80,
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                ),
                CustomButton(
                  onPressed: () {
                    controller.changwLanguage(Applaguages.en);
                    Get.toNamed(OnBoardingScreen.id);
                  },
                  text: const Text("EN"),
                  width: 80,
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
