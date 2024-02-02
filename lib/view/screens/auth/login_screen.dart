import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:mas_app/controllers/auth_controller/login_auth_controller.dart';
import 'package:mas_app/view/screens/auth/signup_screen.dart';
import 'package:mas_app/view/widgets/login_widgets/biometric_auth.dart';
import 'package:mas_app/view/widgets/login_widgets/email_auth.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});
  static const String id = '/login';

  @override
  Widget build(BuildContext context) {
    Get.put(LoginAuthController());
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('login'.tr),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(8),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            // Text(authCtrl.authorized),

            const EmailAuth(),
            const Gap(7),
            //**-------------- Login with fingerprint --------------- */

            const AuthWithBiometrics(),
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
                    Get.toNamed(SignUpScreen.id);
                  },
                  child: const Text('SignUp'))
            ]),
          ]),
        ),
      ),
    );
  }
}
