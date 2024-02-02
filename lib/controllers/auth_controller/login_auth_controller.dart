import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:local_auth_android/local_auth_android.dart';
import 'package:local_auth/local_auth.dart';
import 'package:mas_app/core/functions/dialogs.dart';
import 'package:mas_app/view/screens/auth/signup_screen.dart';

enum SupportState {
  unknown,
  supported,
  unsupported,
}

class LoginAuthController extends GetxController {
  final TextEditingController emailCtrl = TextEditingController();
  final TextEditingController passwordCtrl = TextEditingController();
  final GlobalKey<FormState> formKeyState = GlobalKey();

  final LocalAuthentication localAuth = LocalAuthentication();
  SupportState supportState = SupportState.unknown;
  String authorized = 'Not Authorized';
  void authenticateWithEmail() {
    // bool authenticated = false;
    try {
      if (formKeyState.currentState!.validate()) {
        // do login
        if (emailCtrl.text == 'm' && passwordCtrl.text == '1') {
          showSuccessDialog();
          _goToHomeScreen();
        } else {
          showErrorDialog(title: 'Failed to login');
        }
      }
    } catch (e) {
      //catch error
    }
  }

  _goToHomeScreen() {}
  goToSignUpScreen() {
    Get.toNamed(SignUpScreen.id);
  }

  goToResetPasswordScreen() {}

  Future<void> _isDeviceSupported() async {
    await localAuth.isDeviceSupported().then((bool isSupported) =>
        supportState =
            isSupported ? SupportState.supported : SupportState.unsupported);
    update();
  }

  _authorizedMessage(String message) async {
    authorized = message;
    update();
  }

  Future<void> authenticateWithBiometrics() async {
    if (supportState == SupportState.unknown ||
        supportState == SupportState.unsupported) return;
    bool authenticated = false;
    authenticated = await _authenticate();

    _authorizedMessage(authenticated ? 'Authorized' : 'Not Authorized');
    if (authenticated) {
      // print(authorized);
      // goToHomeScreen
    }
  }

  Future<bool> _authenticate() async {
    bool authenticated = false;
    try {
      authenticated = await localAuth.authenticate(
        localizedReason: 'Scan your fingerprint',
        options: const AuthenticationOptions(
          stickyAuth: true,
          biometricOnly: true,
        ),
        authMessages: const <AuthMessages>[
          AndroidAuthMessages(
            biometricHint: '',
          ),
        ],
      );
    } catch (e) {
      // debugPrint('Error - $e');
    }
    return authenticated;
  }

  @override
  void onInit() {
    _isDeviceSupported();
    super.onInit();
  }

  // @override
  // void onReady() {
  //   super.onReady();
  // }
  @override
  void onClose() {
    emailCtrl.dispose();
    passwordCtrl.dispose();

    super.onClose();
  }
}




  // Future<void> _cancelAuthentication() async {
  //   await localAuth.stopAuthentication();
  //   setState(() => _isAuthenticating = false);
  // }
