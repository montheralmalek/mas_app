import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:mas_app/controllers/onboarding_controller/onboarding_controller.dart';
import 'package:mas_app/core/constants/routes.dart';
import 'package:mas_app/view/screens/onboarding/onboarding_widgets/continue_button.dart';

import 'onboarding_widgets/pag_view_slider.dart';

class OnBoardingScreen extends StatelessWidget {
  static const String id = RoutesConstanat.onBoarding;
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Column(
            children: [
              const Expanded(
                child: PageViewSlider(),
              ),
              Gap(context.isLandscape ? 5 : 60),
              const ContinueButton(),
              Gap(context.isLandscape ? 5 : 30),
            ],
          ),
        ),
      ),
    );
  }
}
