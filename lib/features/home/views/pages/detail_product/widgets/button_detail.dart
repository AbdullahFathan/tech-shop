import 'package:flutter/material.dart';
import 'package:tech_shop/config/app_color.dart';
import 'package:tech_shop/config/app_fonts.dart';

class ButtonDetail extends StatelessWidget {
  const ButtonDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 14,
      ),
      width: double.infinity,
      color: AppColor.lightWhite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "Buy Now",
                style: medium(
                  AppColor.purpleColor,
                  14,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 25,
          ),
          Expanded(
            child: OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.shopping_cart),
              label: Text("Add To Cart",
                  style: medium(
                    AppColor.purpleColor,
                    14,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
