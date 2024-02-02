import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<dynamic> showSuccessDialog() {
  return Get.dialog(
      AlertDialog(
        title: const Text('Loged in successfully'),
        content: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.green, width: 2),
              shape: BoxShape.circle),
          child: const Icon(
            Icons.done,
            size: 64,
            color: Colors.green,
          ),
        ),
      ),
      // transitionDuration: const Duration(seconds: 2),
      transitionCurve: Curves.easeInCirc);
}

Future<dynamic> showErrorDialog({String? title, String? error}) {
  return Get.dialog(
      AlertDialog(
        icon: const Icon(
          Icons.cancel_outlined,
          size: 64,
          color: Colors.red,
        ),
        title: title == null ? null : Text(title),
        content: error == null ? null : Text(error),
      ),
      // transitionDuration: const Duration(seconds: 2),
      transitionCurve: Curves.easeInCirc);
}
