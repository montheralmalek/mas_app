import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mas_app/view/screens/auth/create_password_screen.dart';

class VerificationController extends GetxController {
  final int codeLength = 4;
  final GlobalKey<FormState> formKeyState = GlobalKey();
  String _code = '';
  List<TextEditingController> textController = [];
  _codectrllist() {
    for (var i = 0; i < codeLength; i++) {
      textController.add(TextEditingController());
    }
  }

  String _getCode() {
    _code = '';
    for (var element in textController) {
      _code += element.text;
    }
    return _code;
  }

  onConfirm() {
    if (formKeyState.currentState!.validate()) {
      print(_getCode());
      Get.toNamed(CreatePasswordScreen.id);
    }
  }

  @override
  void onInit() {
    _codectrllist();
    super.onInit();
  }

  @override
  void onClose() {
    textController.clear();
    super.onClose();
  }
}
