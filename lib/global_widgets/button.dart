import 'package:flutter/material.dart';

import 'package:tech_shop/config/app_color.dart';
import 'package:tech_shop/config/app_fonts.dart';

class ButtonWidget extends StatelessWidget {
  final String textButton;
  final Function()? onTap;
  final Color buttonColor;
  const ButtonWidget({
    Key? key,
    required this.textButton,
    this.onTap,
    this.buttonColor = AppColor.blueColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onTap,
      color: buttonColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          12,
        ),
      ),
      child: Text(
        textButton,
        style: bold(
          AppColor.whiteColor,
          14,
        ),
      ),
    );
  }
}
