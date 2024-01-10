import 'package:get/get.dart';
import 'package:tech_shop/features/auth/login/controller/login_controler.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
  }
}
