import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mas_app/controllers/auth_controller/login_auth_controller.dart';
import 'package:mas_app/core/constants/image_assets.dart';

class AuthWithBiometrics extends GetView<LoginAuthController> {
  const AuthWithBiometrics({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: controller.authenticateWithBiometrics,
      icon: const Image(
        image: AssetImage(AppImageAssets.fingerprint),
        height: 40,
      ), //const Icon(Icons.fingerprint),
      iconSize: 40,
      padding: EdgeInsets.zero,
      color: Theme.of(context).colorScheme.primary,
    );
  }
}

//  SizedBox(
//         // height: 28,
//         // width: 48,
//         child: Image(
//           image: AssetImage(AppImageAssets.fingerprint),
//           height: 48,
//           fit: BoxFit.contain,
//         ),
//       ),