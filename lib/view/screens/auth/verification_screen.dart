import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mas_app/controllers/auth_controller/verification_controler.dart';
import 'package:mas_app/view/widgets/auth_widgets/layout_widget.dart';
import 'package:mas_app/view/widgets/auth_widgets/verification_card.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});
  static const String id = '/verifyEmail';

  @override
  Widget build(BuildContext context) {
    Get.put(VerificationController());
    return const Scaffold(
      body: LayoutWidget(
        title: 'verification code',
        subTitle:
            'we sent an email with a verification code to emns*****@gmail.com',
        content: VerificationCard(),
      ),
    );
  }
}
