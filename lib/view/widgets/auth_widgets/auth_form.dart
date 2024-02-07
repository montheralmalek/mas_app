import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:mas_app/controllers/auth_controller/login_auth_controller.dart';
import 'package:mas_app/view/widgets/custom_button.dart';
import 'package:mas_app/view/widgets/custom_textfield.dart';
import 'package:mas_app/view/widgets/auth_widgets/biometric_auth.dart';
import 'package:mas_app/view/widgets/password_textfield.dart';

class AuthenticationForm extends GetView<LoginAuthController> {
  const AuthenticationForm({
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
            SizedBox(
              width: double.infinity,
              child: Text(
                'login',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
            const Gap(15),
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
            //const Gap(10),
            PasswordTextFormField(
              controller: controller.passwordCtrl,
              hinttext: 'password',
              labeltext: 'password',
              prefixicon: const Icon(Icons.key),
              radius: 8,
            ),
            const Gap(20),

            Row(
              children: [
                Expanded(
                  child: CustomButton(
                    height: 45,
                    borderRadius: BorderRadius.circular(50),
                    text: const Text('LogIn'),
                    icon: const Icon(Icons.login),
                    onPressed: controller.authenticateWithEmail,
                  ),
                ),
                const Expanded(
                  child: AuthWithBiometrics(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
