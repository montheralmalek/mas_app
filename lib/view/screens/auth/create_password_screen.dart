import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mas_app/view/screens/auth/auth_widgets/layout_widget.dart';
import 'package:mas_app/view/widgets/custom_button.dart';
import 'package:mas_app/view/screens/auth/auth_widgets/password_textfield.dart';

class CreatePasswordScreen extends StatelessWidget {
  const CreatePasswordScreen({super.key});
  static const String id = '/setPassword';

  @override
  Widget build(BuildContext context) {
    //Get.put(LoginAuthController());
    return Scaffold(
        body: LayoutWidget(
      title: 'create your password',
      subTitle:
          'your password provides you with sign in access to app, so it\'s important we get it right.',
      content: Card(
        clipBehavior: Clip.hardEdge,
        elevation: 10,
        child: Container(
          color: Theme.of(context).colorScheme.background,
          padding: const EdgeInsets.all(15),
          height: 350,
          width: 350,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
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
              prefixicon: Icon(Icons.key),
              radius: 8,
            ),

            const Gap(40),
            //**-------------- Login with fingerprint --------------- */
            CustomButton(
              height: 45,
              borderRadius: BorderRadius.circular(50),
              text: const Text('continue (step 3 of 3)'),
              onPressed: () {
                //Get.toNamed(page)
              },
            ),
          ]),
        ),
      ),
    ));
  }
}
