import 'package:get/get.dart';
import 'package:mas_app/view/screens/auth/login_screen.dart';
import 'package:mas_app/view/screens/auth/create_password_screen.dart';
import 'package:mas_app/view/screens/auth/signup_screen.dart';
import 'package:mas_app/view/screens/auth/verification_screen.dart';
import 'package:mas_app/view/screens/onboarding.dart';

List<GetPage<dynamic>> pagesRoutes = [
  GetPage(name: OnBoardingScreen.id, page: () => const OnBoardingScreen()),
  GetPage(name: LogInScreen.id, page: () => const LogInScreen()),
  GetPage(name: SignUpScreen.id, page: () => const SignUpScreen()),
  GetPage(name: VerifyEmailScreen.id, page: () => const VerifyEmailScreen()),
  GetPage(
      name: CreatePasswordScreen.id, page: () => const CreatePasswordScreen()),
];
