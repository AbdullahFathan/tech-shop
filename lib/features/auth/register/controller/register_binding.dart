import 'package:get/get.dart';
import 'package:tech_shop/features/auth/register/controller/register_controller.dart';

class RegisterBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterController>(() => RegisterController());
  }
}
