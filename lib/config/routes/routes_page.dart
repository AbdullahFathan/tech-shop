import 'package:get/get.dart';
import 'package:tech_shop/config/routes/routes_name.dart';
import 'package:tech_shop/features/auth/login/view/login_page.dart';

class AppRoute {
  static final pages = [
    GetPage(
      name: RoutesName.login,
      page: () => const LoginPage(),
    ),
  ];
}
