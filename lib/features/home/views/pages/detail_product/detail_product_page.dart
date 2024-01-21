import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tech_shop/config/app_color.dart';
import 'package:tech_shop/config/app_fonts.dart';
import 'package:tech_shop/features/home/views/pages/detail_product/widgets/button_detail.dart';
import 'package:tech_shop/features/home/views/pages/detail_product/widgets/dummy_text.dart';
import 'package:tech_shop/features/home/views/pages/detail_product/widgets/like_button.dart';
import 'package:tech_shop/global_widgets/carousel.dart';

class DetailProductPage extends StatelessWidget {
  const DetailProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              children: [
                imageProduct(),
                descriptionProduct(),
              ],
            ),
            //add to cart & buy product button section
            const Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: ButtonDetail(),
            )
          ],
        ),
      ),
    );
  }

  Widget imageProduct() => Container(
        height: 250,
        color: AppColor.lightWhite,
        child: Stack(
          children: [
            SizedBox(
              height: 250,
              child: MyCarousel(
                items: List.generate(
                  5,
                  (index) => Image.network(
                    "https://images.tokopedia.net/img/cache/700/VqbcmM/2021/1/20/5b6654a2-4317-44ba-90f7-6333fa0f7bda.jpg.webp?ect=4g",
                  ),
                ),
              ),
            ),
            Positioned(
              right: 20,
              top: 10,
              child: ElevatedButton(
                onPressed: () => Get.back(),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(4),
                  backgroundColor: AppColor.lightWhite,
                  shape: const CircleBorder(),
                ),
                child: const Icon(
                  Icons.close,
                  size: 26,
                ),
              ),
            )
          ],
        ),
      );

  Widget descriptionProduct() => Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    child: Text(
                      "Macbook Air M1 2020",
                      style: bold(AppColor.blackColor, 20),
                      softWrap: true,
                    ),
                  ),
                  const LikeButton(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3, bottom: 10),
              child: Text(
                "Rp 12.000.000",
                style: medium(AppColor.blackColor, 16),
              ),
            ),
            Wrap(
              children: [
                Text(
                  loremIpsumText,
                  softWrap: true,
                  style: reguler(
                    AppColor.blackColor,
                    12,
                  ),
                ),
              ],
            )
          ],
        ),
      );
}
