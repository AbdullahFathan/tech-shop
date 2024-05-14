import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:tech_shop/config/routes/routes_name.dart';
import 'package:tech_shop/data/local/base/base_controller.dart';
import 'package:tech_shop/utils/helpers/snackbar.dart';

class LoginController extends BaseController {
  var emailController = TextEditingController().obs;
  var passwordController = TextEditingController().obs;
  final formKey = GlobalKey<FormState>().obs;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Jika user menekan login button
  void loginEvent() async {
    if (formKey.value.currentState!.validate()) {
      loadingState();
      try {
        await _auth.signInWithEmailAndPassword(
          email: emailController.value.text,
          password: passwordController.value.text,
        );

        finishLoadData();
        Get.offAllNamed(RoutesName.mainApp);
      } on FirebaseAuthException catch (e) {
        SnackBarHelper.erorSnackBar(e.message);
      }
    }
  }

  Future<void> signWithGoogle() async {
    loadingState();
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      await _auth.signInWithCredential(credential);
      finishLoadData();
      SnackBarHelper.successSnackBar("Login Success");

      Get.offAllNamed(RoutesName.mainApp);
    } on FirebaseAuthException catch (e) {
      SnackBarHelper.erorSnackBar(e.message);
    }
  }

  @override
  void dispose() {
    emailController.value.dispose();
    passwordController.value.dispose();
    super.dispose();
  }
}
