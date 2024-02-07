import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:mas_app/controllers/auth_controller/login_auth_controller.dart';
import 'package:mas_app/core/constants/image_assets.dart';
import 'package:mas_app/view/screens/auth/signup_screen.dart';
import 'package:mas_app/view/widgets/auth_widgets/auth_form.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});
  static const String id = '/login';

  @override
  Widget build(BuildContext context) {
    Get.put(LoginAuthController());
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(8),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Image(
                    image: AssetImage(AppImageAssets.loginLogo),
                    height: 250,
                  ),
                  const Gap(10),
                  const AuthenticationForm(),
                  const Gap(7),
                  //**-------------- Login with fingerprint --------------- */

                  /////////////----------- forgot password ------------//////////////
                  TextButton(
                      onPressed: () {},
                      child: const Text('Forgot your password')),
                  const Divider(),
                  /////////////----------- sign up ------------//////////////
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    const Text('Don\'t have an account'),
                    TextButton(
                        style: ButtonStyle(
                            padding:
                                MaterialStateProperty.all(EdgeInsets.zero)),
                        onPressed: () {
                          Get.toNamed(SignUpScreen.id);
                        },
                        child: const Text('SignUp'))
                  ]),
                ]),
          ),
        ),
      ),
    );
  }
}
