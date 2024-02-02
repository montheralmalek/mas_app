//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mas_app/controllers/hide_pass_controller/hide_password_controlleer.dart';

class PasswordTextFormField extends StatelessWidget {
  const PasswordTextFormField({
    super.key,
    required this.hinttext,
    required this.labeltext,
    this.prefixicon,
    this.controller,
    this.validator,
    this.onsave,
    this.radius = 4,
    this.filled,
  });
  final String hinttext;
  final String labeltext;
  final Widget? prefixicon;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final Function(String?)? onsave;
  final double radius;
  final bool? filled;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HidePasswordController>(
        init: HidePasswordController(),
        builder: (conroller) {
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 5),
            child: TextFormField(
              validator: validator,
              onSaved: onsave,
              controller: controller,
              obscureText: conroller.obscuretext,
              obscuringCharacter: '*',
              decoration: InputDecoration(
                filled: filled,
                fillColor:
                    Theme.of(context).colorScheme.primary.withOpacity(0.1),
                contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(radius))),
                hintText: hinttext,
                label: Text(labeltext),
                prefixIcon: prefixicon,
                suffixIcon: IconButton(
                  icon: conroller.icon,
                  onPressed: () {
                    conroller.onPressed();
                  },
                ),
              ),
            ),
          );
        });
  }
}
