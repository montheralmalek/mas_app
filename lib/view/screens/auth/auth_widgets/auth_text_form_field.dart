import 'package:flutter/material.dart';

class AuthTextFormField extends StatelessWidget {
  const AuthTextFormField(
      {super.key,
      required this.labeltext,
      this.hinttext,
      this.prefixicon,
      this.suffixicon,
      this.controller,
      this.validator,
      this.onsave,
      this.inputType,
      this.maxlines = 1,
      this.initialValue,
      this.textAlign = TextAlign.start,
      this.radius = 30,
      this.filled,
      this.obscureText = false});
  final TextInputType? inputType;
  final String? hinttext;
  final String labeltext;
  final Widget? prefixicon;
  final Widget? suffixicon;
  final int? maxlines;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final Function(String?)? onsave;
  final String? initialValue;
  final TextAlign textAlign;
  final double radius;
  final bool? filled;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        textAlign: textAlign,
        initialValue: initialValue,
        validator: validator, //
        onSaved: onsave, //
        keyboardType: inputType,
        controller: controller,
        maxLines: maxlines,
        obscureText: obscureText,
        obscuringCharacter: '*',
        decoration: InputDecoration(
          filled: filled,
          fillColor: Theme.of(context).colorScheme.primary.withOpacity(0.1),
          contentPadding: const EdgeInsets.symmetric(horizontal: 10),
          prefixIcon: prefixicon,
          suffixIcon: suffixicon,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(radius))),
          hintText: hinttext,
          label: Text(labeltext),
        ),
      ),
    );
  }
}
// child: TextFormField(
//               validator: validator,//
//               onSaved: onsave,//
//               controller: controller,s
//               obscureText: conroller.obscuretext,
//               obscuringCharacter: '*',
//               decoration: InputDecoration(
//                 filled: filled,
//                 fillColor:
//                     Theme.of(context).colorScheme.primary.withOpacity(0.1),
//                 contentPadding: const EdgeInsets.symmetric(horizontal: 10),
//                 border: OutlineInputBorder(
//                     borderRadius: BorderRadius.all(Radius.circular(radius))),
//                 hintText: hinttext,
//                 label: Text(labeltext),
//                 prefixIcon: prefixicon,
//                 suffixIcon: IconButton(
//                   icon: conroller.icon,
//                   onPressed: () {
//                     conroller.onPressed();
//                   },
//                 ),
//               ),
//             ),