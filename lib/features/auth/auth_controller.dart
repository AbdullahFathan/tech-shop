import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tech_shop/config/routes/routes_name.dart';

class AuthController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  //SIGN OUT METHOD
  Future signOut() async {
    await _auth.signOut();
    Get.offAllNamed(RoutesName.login);
    debugPrint('signout success');
  }
}
