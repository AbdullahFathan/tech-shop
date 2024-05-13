import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  var emailController = TextEditingController().obs;
  var passwordController = TextEditingController().obs;
  final formKey = GlobalKey<FormState>().obs;

  //Jika user menekan regitser button
  void registerEvent() {
    //Cek apakah data dimasukan sudah valid
    if (formKey.value.currentState!.validate()) {
      Get.snackbar(
        "Berhasil",
        "VALID",
      );
    }
  }

  @override
  void dispose() {
    emailController.value.dispose();
    passwordController.value.dispose();
    super.dispose();
  }
}
