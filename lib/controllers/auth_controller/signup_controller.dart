import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mas_app/view/screens/auth/login_screen.dart';
import 'package:mas_app/view/screens/auth/verification_screen.dart';

abstract class AbstractSignUpController extends GetxController {
  void onPressSignUp();
  void onTapLogin();
}

class SignUpController extends AbstractSignUpController {
  late TextEditingController email;
  late TextEditingController userName;
  late TextEditingController password;
  //final TextEditingController vCode = TextEditingController();

  late int verifyCode;

  @override
  void onInit() {
    email = TextEditingController();
    userName = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    userName.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  void onPressSignUp() {
    Get.toNamed(VerifyEmailScreen.id);
  }

  @override
  void onTapLogin() {
    Get.offAndToNamed(LogInScreen.id);
  }
}
