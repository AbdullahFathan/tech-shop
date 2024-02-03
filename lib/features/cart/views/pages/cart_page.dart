import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tech_shop/config/app_color.dart';
import 'package:tech_shop/config/app_fonts.dart';
import 'package:tech_shop/features/cart/controller/cart_controller.dart';
import 'package:tech_shop/features/cart/views/widgets/cart_item_widget.dart';

import 'package:tech_shop/global_widgets/appbar.dart';
import 'package:tech_shop/global_widgets/button.dart';
import 'package:tech_shop/utils/price_helper.dart';

class CartPage extends GetView<CartController> {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        text: "Cart",
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: controller.dummyDataCart.length,
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 5,
              ),
              itemBuilder: (context, index) {
                return CartItemWidget(
                  item: controller.dummyDataCart[index],
                  controller: controller,
                  index: index,
                );
              },
            ),
          ),

          // Total price & buy button
          Container(
            height: 70,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
            ),
            decoration: const BoxDecoration(
              color: AppColor.lightWhite,
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.25),
                  offset: Offset(0, 2),
                  blurRadius: 8,
                  spreadRadius: 0,
                ),
              ],
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12), topRight: Radius.circular(12)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Obx(() => Text(
                      'Total:  ${PriceHelper.formatPrice(controller.totalPrice.value.toString())}',
                      style: medium(AppColor.blackColor, 16),
                    )),
                ButtonWidget(
                  textButton: "Buy",
                  buttonColor: AppColor.purpleColor,
                  onTap: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
