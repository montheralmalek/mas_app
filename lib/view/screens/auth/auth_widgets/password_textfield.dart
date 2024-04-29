//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mas_app/controllers/hide_pass_controller/hide_password_controlleer.dart';
import 'package:mas_app/view/screens/auth/auth_widgets/auth_text_form_field.dart';

class PasswordTextFormField extends GetView<HidePasswordController> {
  const PasswordTextFormField({
    super.key,
    required this.hinttext,
    required this.labeltext,
    this.prefixicon,
    this.textController,
    this.validator,
    this.onsave,
    this.radius = 4,
    this.filled,
  });
  final String hinttext;
  final String labeltext;
  final Widget? prefixicon;
  final TextEditingController? textController;
  final String? Function(String?)? validator;
  final Function(String?)? onsave;
  final double radius;
  final bool? filled;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HidePasswordController>(builder: (controller) {
      return AuthTextFormField(
        validator: validator,
        controller: textController,
        labeltext: labeltext,
        hinttext: hinttext,
        onsave: onsave,
        obscureText: controller.obscuretext,
        prefixicon: prefixicon,
        suffixicon: IconButton(
          icon: controller.icon,
          onPressed: () {
            controller.onPressed();
          },
        ),
      );
    });
  }
}
