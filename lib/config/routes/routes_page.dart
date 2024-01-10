import 'package:get/get.dart';
import 'package:tech_shop/config/routes/routes_name.dart';
import 'package:tech_shop/features/auth/forgot_password/controller/forgot_password_binding.dart';
import 'package:tech_shop/features/auth/forgot_password/view/forgot_password_page.dart';
import 'package:tech_shop/features/auth/login/controller/login_binding.dart';
import 'package:tech_shop/features/auth/login/view/login_page.dart';
import 'package:tech_shop/features/auth/register/controller/register_binding.dart';
import 'package:tech_shop/features/auth/register/view/register_page.dart';
import 'package:tech_shop/features/home/home_page.dart';

class AppRoute {
  static final pages = [
    GetPage(
      name: RoutesName.login,
      page: () => const LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: RoutesName.register,
      page: () => const RegisterPage(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: RoutesName.forgotPassword,
      page: () => const ForgotPasswordPage(),
      binding: ForgotPasswordBinding(),
    ),
    GetPage(
      name: RoutesName.homePage,
      page: () => const HomePage(),
    ),
  ];
}
