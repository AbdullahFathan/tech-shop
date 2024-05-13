import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:tech_shop/config/app_color.dart';

class EmailTextFormn extends StatelessWidget {
  final TextEditingController textEditingController;
  const EmailTextFormn({
    Key? key,
    required this.textEditingController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.go,
      validator: (value) {
        if (!GetUtils.isEmail(value ?? "")) {
          return "Please enter a valid email address";
        }
        return null;
      },
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              width: 1,
              color: AppColor.blueColor,
            ),
          ),
          hintText: "Email",
          suffixIcon: const Icon(
            Icons.alternate_email_sharp,
          ),
          contentPadding: const EdgeInsets.only(
            left: 12,
          )),
    );
  }
}
