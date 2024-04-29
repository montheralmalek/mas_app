import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mas_app/controllers/onboarding_controller/onboarding_controller.dart';
import 'package:mas_app/core/constants/app_colors.dart';
import 'package:mas_app/data/sources/static/static.dart';

class SliderController extends StatelessWidget {
  const SliderController({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(builder: (controller) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: onBoardingList.asMap().entries.map((entry) {
          return GestureDetector(
            onTap: () => controller.onTap(entry.key),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 400),
              width: controller.currentPage == entry.key ? 25.0 : 8,
              height: 5.0,
              margin:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
              decoration: BoxDecoration(
                //shape: BoxShape.circle,
                borderRadius: BorderRadius.circular(5),
                color: AppColors.primary
                    .withOpacity(controller.currentPage == entry.key ? 1 : 0.6),
              ),
            ),
          );
        }).toList(),
      );
    });
  }
}
