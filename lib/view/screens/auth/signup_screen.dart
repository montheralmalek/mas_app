// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
// import 'package:http/http.dart';
import 'package:mas_app/controllers/auth_controller/signup_controller.dart';
import 'package:mas_app/core/constants/image_assets.dart';
// import 'package:mas_app/core/constants/image_assets.dart';
// import 'package:mas_app/core/constants/layout_const.dart';
import 'package:mas_app/view/screens/auth/auth_widgets/back_to_login_widget.dart';
import 'package:mas_app/view/screens/auth/auth_widgets/social_medai_button.dart';
import 'package:mas_app/view/widgets/horzontal_divider_titled.dart';
// import 'package:mas_app/view/widgets/horzontal_divider_titled.dart';
import 'auth_widgets/auth_scaffold.dart';
import 'auth_widgets/sign_up_form.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});
  static const String id = '/signUp';

  @override
  Widget build(BuildContext context) {
    Get.put<SignUpController>(SignUpController());
    return AuthScaffold(
      image: AppImageAssets.signUpLogo,
      title: 'Sign Up',
      subTitle: 'creat yor account',
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8),
        child: Wrap(
          runSpacing: 10,
          spacing: 10,
          alignment: WrapAlignment.spaceEvenly,
          runAlignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SocialMediaButton(
              icon: FontAwesomeIcons.facebook, //Icons.facebook,
              text: 'Sign up with facebook',
              iconColor: const Color(0xff1877f2),
              textColor: Colors.white, width: 250,
              onTap: () {},
            ),
            SocialMediaButton(
              icon: FontAwesomeIcons.xTwitter,
              text: 'Sign up with X',
              iconColor: const Color(0xff000000),
              textColor: Colors.white,
              width: 250,
              onTap: () {},
            ),
            SocialMediaButton(
              icon: FontAwesomeIcons.googlePlus,
              text: 'Sign up with google',
              iconColor: const Color(0xffea4335),
              textColor: Colors.white,
              width: 250,
              onTap: () {},
            ),
            const HorzontalDivdierTitled(text: 'or'),
            const SignUpForm(),
            const BackToLoginWidget(),
          ],
        ),
      ),
    );
  }
}
