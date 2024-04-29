import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mas_app/controllers/onboarding_controller/onboarding_controller.dart';
import 'package:mas_app/data/sources/static/static.dart';
import 'package:mas_app/view/screens/auth/login_screen.dart';

class ContinueButton extends StatelessWidget {
  const ContinueButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(builder: (controller) {
      return SizedBox(
        height: 50,
        child: FilledButton(
          style: ButtonStyle(
            // shape: MaterialStateProperty.all(RoundedRectangleBorder(
            //     borderRadius: BorderRadius.circular(30))),
            minimumSize:
                MaterialStateProperty.all(const Size(300, double.infinity)),
            // backgroundColor: MaterialStateProperty.all(AppColors.primary),
          ),
          onPressed: () {
            if (controller.currentPage != onBoardingList.length - 1) {
              controller.next();
            } else {
              Get.offAllNamed(LogInScreen.id);
            }
          },
          child: Text(
            controller.currentPage == 0 ? 'Let\'s go' : 'continue'.tr,
            // style: const TextStyle(color: AppColors.onPrimary),
          ),
        ),
      );
    });
  }
}
