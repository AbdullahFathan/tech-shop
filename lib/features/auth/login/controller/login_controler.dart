import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tech_shop/config/routes/routes_name.dart';

class LoginController extends GetxController {
  var emailController = TextEditingController().obs;
  var passwordController = TextEditingController().obs;
  final formKey = GlobalKey<FormState>().obs;

  // Jika user menekan login button
  void loginEvent() {
    //cek apakah data yang sudah dimasukan valid
    if (formKey.value.currentState!.validate()) {
      Get.offAllNamed(RoutesName.appNavBar);
    }
  }

  @override
  void dispose() {
    emailController.value.dispose();
    passwordController.value.dispose();
    super.dispose();
  }
}
