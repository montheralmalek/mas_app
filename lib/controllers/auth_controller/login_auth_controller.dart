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

abstract class AbstractLoginController extends GetxController {
  void onPressLogin();
  void onPressFingerPrint();
  void onTapSignUp();
  void onTapForgotPassword();
}

class LoginController extends AbstractLoginController {
  // final TextEditingController emailCtrl = TextEditingController();
  // final TextEditingController passwordCtrl = TextEditingController();
  // @override
  // final GlobalKey<FormState> formKeyState = GlobalKey();
  late GlobalKey<FormState> formKeyState;
  late TextEditingController emailCtrl;
  late TextEditingController passwordCtrl;
  final LocalAuthentication localAuth = LocalAuthentication();
  SupportState supportState = SupportState.unknown;
  String authorized = 'Not Authorized';
  // void authenticateWithEmail() {
  //   // bool authenticated = false;
  //   try {
  //     if (formKeyState.currentState!.validate()) {
  //       // do login
  //       if (emailCtrl.text == 'm' && passwordCtrl.text == '1') {
  //         showSuccessDialog();
  //         _goToHomeScreen();
  //       } else {
  //         showErrorDialog(title: 'Failed to login');
  //       }
  //     }
  //   } catch (e) {
  //     //catch error
  //   }
  // }

  // _goToHomeScreen() {}

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
    formKeyState = GlobalKey();
    emailCtrl = TextEditingController();
    passwordCtrl = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    emailCtrl.dispose();
    passwordCtrl.dispose();
    super.dispose();
  }

  @override
  void onClose() {
    super.onClose();
  }

  @override
  void onPressLogin() {
    // TODO: implement onPressLogin
  }

  @override
  void onTapForgotPassword() {
    // TODO: implement onTapForgotPassword
  }
  @override
  void onTapSignUp() {
    Get.offAndToNamed(SignUpScreen.id);
  }

  @override
  void onPressFingerPrint() {
    // TODO: implement onPressFingerPrint
  }
}




  // Future<void> _cancelAuthentication() async {
  //   await localAuth.stopAuthentication();
  //   setState(() => _isAuthenticating = false);
  // }
