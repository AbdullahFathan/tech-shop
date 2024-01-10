import 'package:flutter/material.dart';

import 'package:tech_shop/config/app_color.dart';
import 'package:tech_shop/config/app_fonts.dart';

class ButtonWidget extends StatelessWidget {
  final String textButton;
  final Function()? onTap;
  const ButtonWidget({
    Key? key,
    required this.textButton,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onTap,
      color: AppColor.blueColor,
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
