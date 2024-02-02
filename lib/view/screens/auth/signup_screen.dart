import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:mas_app/view/widgets/custom_textfield.dart';
import 'package:mas_app/view/widgets/login_widgets/email_auth.dart';
import 'package:mas_app/view/widgets/password_textfield.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});
  static const String id = '/signUp';

  @override
  Widget build(BuildContext context) {
    //Get.put(LoginAuthController());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('signup'.tr),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(8),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            // const EmailAuth(),
            const CustomTextFormField(
              //validator: validateEmail,
              // controller: controller.emailCtrl,
              inputType: TextInputType.name,
              // hinttext: 'exampel@ar.com',
              labeltext: 'UserName',
              prefixicon: Icon(Icons.person_outline),
              radius: 8,
            ),
            const CustomTextFormField(
              //validator: validateEmail,
              // controller: controller.emailCtrl,
              inputType: TextInputType.emailAddress,
              hinttext: 'exampel@ar.com',
              labeltext: 'Email',
              prefixicon: Icon(Icons.email),
              radius: 8,
            ),
            const PasswordTextFormField(
              // controller: controller.passwordCtrl,
              hinttext: 'password',
              labeltext: 'Password',
              prefixicon: Icon(Icons.key),
              radius: 8,
            ),
            const PasswordTextFormField(
              //controller: controller.passwordCtrl,
              hinttext: 'Confirm Password',
              labeltext: 'Confirm Password',
              prefixicon: Icon(Icons.confirmation_num_outlined),
              radius: 8,
            ),

            const Gap(7),
            //**-------------- Login with fingerprint --------------- */

            // const AuthWithBiometrics(),
            /////////////----------- forgot password ------------//////////////
            TextButton(
                onPressed: () {}, child: const Text('Forgot your password')),
            const Divider(),
            /////////////----------- sign up ------------//////////////
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Text('Don\'t have an account'),
              TextButton(
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.zero)),
                  onPressed: () {
                    // Navigator.pushNamed(context, SignUpView.id);
                  },
                  child: const Text('SignUp'))
            ]),
          ]),
        ),
      ),
    );
  }
}
