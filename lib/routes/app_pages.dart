import 'package:get/get.dart';

import '../core.dart';

part 'app_routes.dart';

class AppPages {
  // ignore: constant_identifier_names
  static const INITIAL = Routes.welcome;

  static final routes = [
    GetPage(
      name: Routes.welcome, 
      page: () => const WelcomeView(),
      ),
    GetPage(
      name: Routes.login, 
      page: () => const LoginView(),
      ),
      GetPage(
      name: Routes.forgotpassword, 
      page: () => const ForgotPasswordView(),
      ),

  ];
}