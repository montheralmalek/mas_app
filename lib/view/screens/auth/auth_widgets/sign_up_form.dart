import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:mas_app/controllers/auth_controller/signup_controller.dart';
import 'package:mas_app/core/constants/image_assets.dart';
import 'package:mas_app/view/screens/auth/auth_widgets/auth_text_form_field.dart';
import 'package:mas_app/view/screens/auth/auth_widgets/password_textfield.dart';
import 'package:mas_app/view/screens/auth/verification_screen.dart';
import 'package:mas_app/view/widgets/custom_button.dart';

import 'back_to_login_widget.dart';

class SignUpForm extends GetView<SignUpController> {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 360,
      child: Form(
        //key: controller.formKeyState,
        autovalidateMode: AutovalidateMode.always,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          AuthTextFormField(
            //validator: validateEmail,
            controller: controller.userName,
            inputType: TextInputType.name,
            hinttext: 'userName',
            labeltext: 'UserName',
            prefixicon: const Icon(Icons.person_outline),
          ),
          AuthTextFormField(
            //validator: validateEmail,
            controller: controller.email,
            inputType: TextInputType.emailAddress,
            hinttext: 'exampel@ar.com',
            labeltext: 'Email',
            prefixicon: const Icon(Icons.email),
          ),
          PasswordTextFormField(
            textController: controller.password,
            hinttext: 'password',
            labeltext: 'Password',
            prefixicon: const Icon(Icons.key),
            radius: 8,
          ),
          PasswordTextFormField(
            //controller: controller.passwordCtrl,
            validator: (value) {
              if (value != controller.password.text) return 'Wrong password';
              return null;
            },
            hinttext: 'Confirm Password',
            labeltext: 'Confirm Password',
            prefixicon: const Icon(Icons.key),
            radius: 8,
          ),
          const Gap(10),
          //**-------------- Login with fingerprint --------------- */
          CustomButton(
            height: 45,
            borderRadius: BorderRadius.circular(50),
            text: const Text('sign up'),
            icon: const Icon(Icons.app_registration),
            onPressed: () {
              Get.toNamed(VerifyEmailScreen.id);
            },
          ),
        ]),
      ),
    );
  }
}
