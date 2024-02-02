import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:mas_app/controllers/auth_controller/login_auth_controller.dart';
import 'package:mas_app/view/widgets/custom_button.dart';
import 'package:mas_app/view/widgets/custom_textfield.dart';
import 'package:mas_app/view/widgets/password_textfield.dart';

class EmailAuth extends GetView<LoginAuthController> {
  const EmailAuth({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 360,
      child: Form(
        key: controller.formKeyState,
        autovalidateMode: AutovalidateMode.always,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //**-------------------- Email ---------------- */
            CustomTextFormField(
              //validator: validateEmail,
              controller: controller.emailCtrl,
              inputType: TextInputType.emailAddress,
              hinttext: 'exampel@ar.com',
              labeltext: 'email',
              prefixicon: const Icon(Icons.email),
              radius: 8,
            ),
            //**------------------- Password ---------------- */
            const Gap(10),
            PasswordTextFormField(
              controller: controller.passwordCtrl,
              hinttext: 'password',
              labeltext: 'password',
              prefixicon: const Icon(Icons.key),
              radius: 8,
            ),
            const Gap(20),

            CustomButton(
              height: 45,
              borderRadius: BorderRadius.circular(50),
              text: const Text('LogIn'),
              icon: const Icon(Icons.login),
              onPressed: controller.authenticateWithEmail,
            ),
          ],
        ),
      ),
    );
  }
}
