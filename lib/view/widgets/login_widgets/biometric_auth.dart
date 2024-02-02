import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mas_app/controllers/auth_controller/login_auth_controller.dart';

class AuthWithBiometrics extends GetView<LoginAuthController> {
  const AuthWithBiometrics({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Login with fingerprint'),
        IconButton(
          onPressed: controller.authenticateWithBiometrics,
          icon: const Icon(Icons.fingerprint),
          iconSize: 32,
          padding: EdgeInsets.zero,
          color: Theme.of(context).colorScheme.primary,
        ),
        // Text(authCtrl.authorized),
      ],
    );
  }
}
