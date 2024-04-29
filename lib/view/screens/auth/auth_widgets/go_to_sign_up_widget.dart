import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mas_app/controllers/auth_controller/login_auth_controller.dart';
import 'package:mas_app/view/screens/auth/auth_widgets/text_with_link_widget.dart';

class GoToSignUpWidget extends GetView<LoginController> {
  const GoToSignUpWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextWithLinkWidget(
      unlinkText: 'Don\'t have an account',
      linkText: 'SignUp',
      onTap: controller.onTapSignUp,
    );
  }
}
