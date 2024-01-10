import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class LoginPage extends GetView {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('LoginPage')),
        body: SafeArea(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('LoginController'),
              const SizedBox(
                height: 40,
              ),
              SvgPicture.asset(
                "assets/images/login.svg",
                height: 300,
              )
            ],
          ),
        )));
  }
}
