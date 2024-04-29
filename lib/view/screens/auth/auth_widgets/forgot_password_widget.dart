import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mas_app/controllers/auth_controller/login_auth_controller.dart';

class ForgotPasswordWidget extends GetView<LoginController> {
  const ForgotPasswordWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: controller.onTapForgotPassword,
        child: const Text('Forgot your password'));
  }
}
