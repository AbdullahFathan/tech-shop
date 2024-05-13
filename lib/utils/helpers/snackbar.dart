import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackBarHelper {
  static SnackbarController erorSnackBar(String? erorText) {
    return Get.rawSnackbar(
      backgroundColor: Colors.red,
      borderRadius: 8,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      margin: const EdgeInsets.all(16),
      snackPosition: SnackPosition.TOP,
      titleText: const Text(
        "Eror",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      messageText: Text(
        erorText ?? "Something went wrong",
        style: const TextStyle(
          color: Colors.white,
          fontSize: 14,
        ),
      ),
    );
  }
}
