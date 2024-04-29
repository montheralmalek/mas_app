import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mas_app/controllers/auth_controller/login_auth_controller.dart';
import 'package:mas_app/controllers/auth_controller/signup_controller.dart';
import 'package:mas_app/view/screens/auth/auth_widgets/text_with_link_widget.dart';

class BackToLoginWidget extends GetView<SignUpController> {
  const BackToLoginWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextWithLinkWidget(
      unlinkText: 'Already have an account?',
      linkText: 'Login',
      onTap: controller.onTapLogin,
    );
  }
}
