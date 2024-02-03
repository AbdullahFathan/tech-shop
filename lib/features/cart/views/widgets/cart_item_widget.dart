import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import 'package:tech_shop/config/app_color.dart';
import 'package:tech_shop/config/app_fonts.dart';
import 'package:tech_shop/features/cart/controller/cart_controller.dart';
import 'package:tech_shop/features/cart/models/cart_model.dart';
import 'package:tech_shop/utils/price_helper.dart';

class CartItemWidget extends StatelessWidget {
  final Cart item;
  final int index;
  final CartController controller;

  const CartItemWidget({
    Key? key,
    required this.item,
    required this.index,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Slidable(
      endActionPane: ActionPane(
        extentRatio: 0.25,
        motion: const BehindMotion(),
        children: [
          ElevatedButton(
            onPressed: () {
              //TODO: Remove item from cart
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: AppColor.whiteColor,
                fixedSize: const Size(52, 52),
                padding: const EdgeInsets.all(8),
                shape: const CircleBorder()),
            child: const Icon(
              Icons.close,
              color: AppColor.purpleColor,
              size: 32,
            ),
          )
        ],
      ),
      child: Container(
        height: 200,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
        ),
        margin: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 8,
        ),
        decoration: BoxDecoration(
          color: AppColor.lightWhite,
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.25),
              offset: Offset(0, 2),
              blurRadius: 8,
              spreadRadius: 0,
            ),
          ],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            //Checkbox to add item to list buy user
            Obx(() => Transform.scale(
                  scale: 1.5,
                  child: Checkbox(
                    activeColor: AppColor.purpleColor,
                    value: controller.dummyDataCart[index].isChek,
                    onChanged: (_) {
                      controller.changeCheck(
                        controller.dummyDataCart[index].id,
                      );
                    },
                  ),
                )),
            Expanded(
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(
                      12,
                    ),
                    child: SizedBox(
                      height: 140,
                      width: 170,
                      child: Image.network(
                        item.image[0],
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Text(
                            item.name,
                            style: bold(AppColor.blackColor, 14),
                            softWrap: true,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 3),
                          child: Text(
                            PriceHelper.formatPrice(item.price),
                            style: medium(AppColor.blackColor, 12),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
