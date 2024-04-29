import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mas_app/controllers/auth_controller/login_auth_controller.dart';
import 'package:mas_app/controllers/hide_pass_controller/hide_password_controlleer.dart';
import 'package:mas_app/core/constants/image_assets.dart';
import 'package:mas_app/view/screens/auth/auth_widgets/login_form.dart';

import 'auth_widgets/forgot_password_widget.dart';
import 'auth_widgets/go_to_sign_up_widget.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});
  static const String id = '/login';

  @override
  Widget build(BuildContext context) {
    Get.put(LoginController());
    Get.put(HidePasswordController());
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(8),
            child: Wrap(
                runSpacing: 10,
                spacing: 10,
                alignment: WrapAlignment.spaceEvenly,
                runAlignment: WrapAlignment.spaceEvenly,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Image(
                    image: AssetImage(AppImageAssets.loginLogo),
                    height: 250,
                  ),

                  //////----------- Login form------------///////
                  LoginForm(),

                  //////----------- forgot password ------------///////
                  ForgotPasswordWidget(),
                  Divider(
                    height: 0,
                    indent: 10,
                    endIndent: 10,
                  ),
                  //////----------- Go to sign up ------------////////
                  GoToSignUpWidget(),
                ]),
          ),
        ),
      ),
    );
  }
}
