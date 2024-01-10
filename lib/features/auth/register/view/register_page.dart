import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:tech_shop/features/auth/register/controller/register_controller.dart';
import 'package:tech_shop/features/auth/widgets/email_text.dart';
import 'package:tech_shop/features/auth/widgets/password_text.dart';
import 'package:tech_shop/global_widgets/appbar.dart';
import 'package:tech_shop/global_widgets/button.dart';

class RegisterPage extends GetView<RegisterController> {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(text: "Register Page"),
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Form(
          key: controller.formKey.value,
          child: ListView(
            children: [
              SvgPicture.asset(
                "assets/images/register.svg",
                height: 300,
              ),
              EmailTextFormn(
                textEditingController: controller.emailController.value,
              ),
              const SizedBox(
                height: 16,
              ),
              PasswordTextForm(
                textEditingController: controller.passwordController.value,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 80,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Memiliki 6 Karakter,"),
                      Text("Memiliki 1 Huruf kapital,"),
                      Text("Memiliki 1 Angka,"),
                      Text("Memiliki 1 Karakter Spesial."),
                    ],
                  ),
                ),
              ),
              ButtonWidget(
                textButton: "R E G I S T E R",
                onTap: () => controller.registerEvent(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
