import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mas_app/controllers/onboarding_controller/onboarding_controller.dart';
import 'package:mas_app/view/widgets/onboarding_widgets/slider_controller_widget.dart';

import '../widgets/onboarding_widgets/pag_view_slider.dart';

class OnBoardingScreen extends StatelessWidget {
  static const String id = 'onBoarding screen';
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Column(
            children: [
              Expanded(
                child: PageViewSlider(),
              ),
              SliderController(),
            ],
          ),
        ),
      ),
    );
  }
}
