import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tech_shop/config/app_color.dart';
import 'package:tech_shop/config/routes/routes_name.dart';

class SearchProduct extends StatelessWidget {
  const SearchProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                constraints: const BoxConstraints.expand(height: 35),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    width: 1,
                    color: AppColor.greyColor,
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () => Get.toNamed(RoutesName.cartPage),
                  icon: const Icon(
                    Icons.shopping_cart_outlined,
                    color: AppColor.purpleColor,
                  ),
                ),
                IconButton(
                  onPressed: () => Get.toNamed(RoutesName.likedProduct),
                  icon: const Icon(
                    Icons.favorite_outline,
                    color: AppColor.purpleColor,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
