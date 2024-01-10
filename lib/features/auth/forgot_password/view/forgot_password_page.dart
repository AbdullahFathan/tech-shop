import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tech_shop/config/app_color.dart';
import 'package:tech_shop/config/app_fonts.dart';
import 'package:tech_shop/features/auth/forgot_password/controller/forgot_password_controller.dart';
import 'package:tech_shop/features/auth/widgets/email_text.dart';
import 'package:tech_shop/global_widgets/appbar.dart';
import 'package:tech_shop/global_widgets/button.dart';

class ForgotPasswordPage extends GetView<ForgotPasswordController> {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(text: "Forgot Password"),
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
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  bottom: 20,
                  left: 10,
                ),
                child: Text(
                  "Masukan Email Valid yang sudah terdaftar",
                  style: medium(
                    AppColor.blackColor,
                    14,
                  ),
                ),
              ),
              ButtonWidget(
                textButton: "R E S E T",
                onTap: () => controller.forgotPasswordEvent(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
