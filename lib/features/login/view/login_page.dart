import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tech_shop/config/app_color.dart';
import 'package:tech_shop/config/app_fonts.dart';
import 'package:tech_shop/config/routes/routes_name.dart';
import 'package:tech_shop/features/login/controller/login_controler.dart';
import 'package:tech_shop/utils/global_widgets/email_text.dart';
import 'package:tech_shop/utils/global_widgets/password_text.dart';
import 'package:tech_shop/utils/global_widgets/appbar.dart';
import 'package:tech_shop/utils/global_widgets/button.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(text: "Login Page"),
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Form(
          key: controller.formKey.value,
          child: ListView(
            children: [
              SvgPicture.asset(
                "assets/images/login.svg",
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
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 13),
                child: GestureDetector(
                  onTap: () => Get.toNamed(RoutesName.forgotPassword),
                  child: Text(
                    "Forgot Password ??",
                    textAlign: TextAlign.end,
                    style: medium(
                      AppColor.blackColor,
                      14,
                    ),
                  ),
                ),
              ),
              ButtonWidget(
                textButton: "L O G I N",
                onTap: () => controller.loginEvent(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 13),
                child: Text(
                  "O R",
                  textAlign: TextAlign.center,
                  style: medium(
                    AppColor.blackColor,
                    14,
                  ),
                ),
              ),
              OutlinedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/images/google.svg",
                      height: 30,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Google Account",
                      style: medium(
                        AppColor.blackColor,
                        14,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 35,
                ),
                child: GestureDetector(
                  onTap: () => Get.toNamed(RoutesName.register),
                  child: Text(
                    "Don't have Account ?? Register Now",
                    textAlign: TextAlign.center,
                    style: medium(
                      AppColor.blackColor,
                      14,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
