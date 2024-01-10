import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordController extends GetxController {
  var emailController = TextEditingController().obs;
  final formKey = GlobalKey<FormState>().obs;

  //Jika user menekan button
  void forgotPasswordEvent() {
    //cek apakah data dimasukan sudah valid
    if (formKey.value.currentState!.validate()) {
      Get.snackbar('Valid', 'Data Benar');
    }
  }

  @override
  void dispose() {
    emailController.value.dispose();
    super.dispose();
  }
}
