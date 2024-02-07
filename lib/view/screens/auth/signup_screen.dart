import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:mas_app/core/constants/image_assets.dart';
import 'package:mas_app/view/screens/auth/verification_screen.dart';
import 'package:mas_app/view/widgets/custom_button.dart';
import 'package:mas_app/view/widgets/custom_textfield.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});
  static const String id = '/signUp';

  @override
  Widget build(BuildContext context) {
    //Get.put(LoginAuthController());
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(8),
            child: SizedBox(
              width: 360,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Image(
                      image: AssetImage(AppImageAssets.signUpLogo),
                      height: 250,
                    ),
                    const Gap(10),
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        'create account',
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                    ),
                    const Gap(15),
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

                    const Gap(7),
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

                    const Divider(
                      height: 30,
                      endIndent: 20,
                      indent: 20,
                    ),
                    /////////////----------- sign up ------------//////////////
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      const Text('Already have an account?'),
                      TextButton(
                          style: ButtonStyle(
                              padding:
                                  MaterialStateProperty.all(EdgeInsets.zero)),
                          onPressed: () {
                            Get.back();
                          },
                          child: const Text('login'))
                    ]),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
