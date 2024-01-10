import 'package:flutter/material.dart';

import 'package:tech_shop/config/app_color.dart';
import 'package:tech_shop/features/auth/utils/form_validartor.dart';

class PasswordTextForm extends StatefulWidget {
  final TextEditingController textEditingController;
  const PasswordTextForm({
    Key? key,
    required this.textEditingController,
  }) : super(key: key);

  @override
  State<PasswordTextForm> createState() => _PasswordTextFormState();
}

class _PasswordTextFormState extends State<PasswordTextForm> {
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.textEditingController,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.go,
      obscureText: isObscure,
      validator: (value) {
        if (!isStrongPassword(value!)) {
          return "Please enter a Strong Password";
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
          hintText: "Password",
          suffixIcon: IconButton(
            icon: isObscure
                ? const Icon(Icons.visibility_off_outlined)
                : const Icon(Icons.visibility_outlined),
            onPressed: () {
              setState(() {
                isObscure = !isObscure;
              });
            },
          ),
          contentPadding: const EdgeInsets.only(
            left: 12,
          )),
    );
  }
}
