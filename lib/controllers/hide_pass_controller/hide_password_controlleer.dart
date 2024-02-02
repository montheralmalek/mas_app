import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HidePasswordController extends GetxController {
  bool _obscuretext = true;

  onPressed() {
    _obscuretext = !_obscuretext;
    update();
  }

  get obscuretext {
    return _obscuretext;
  }

  get icon {
    return Icon(obscuretext ? Icons.visibility_off : Icons.visibility);
  }
}
