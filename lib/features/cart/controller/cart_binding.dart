import 'package:get/get.dart';
import 'package:tech_shop/features/cart/controller/cart_controller.dart';

class CartBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CartController>(() => CartController());
  }
}
