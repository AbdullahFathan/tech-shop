import 'package:flutter/material.dart';
import 'package:tech_shop/config/app_color.dart';

class LikeButton extends StatefulWidget {
  const LikeButton({super.key});

  @override
  State<LikeButton> createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  bool isLike = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          isLike = !isLike;
        });
      },
      style: IconButton.styleFrom(
        padding: const EdgeInsets.all(4),
        backgroundColor: AppColor.lightWhite,
        shape: const CircleBorder(),
      ),
      icon: Icon(
        isLike ? Icons.favorite : Icons.favorite_outline,
        size: 26,
        color: AppColor.purpleColor,
      ),
    );
  }
}
