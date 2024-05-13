import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tech_shop/config/app_color.dart';
import 'package:tech_shop/config/app_fonts.dart';
import 'package:tech_shop/config/routes/routes_name.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(RoutesName.detailProduct),
      child: Container(
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(
                12,
              ),
              child: SizedBox(
                height: 170,
                child: Image.network(
                  "https://images.tokopedia.net/img/cache/700/VqbcmM/2021/1/20/5b6654a2-4317-44ba-90f7-6333fa0f7bda.jpg.webp?ect=4g",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Macbook Air M1 2020 ",
                    style: bold(AppColor.blackColor, 14),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 3),
                    child: Text(
                      "Rp 12.000.000",
                      style: medium(AppColor.blackColor, 14),
                    ),
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.star_sharp,
                        color: AppColor.yellowColor,
                        size: 12,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "5.0 | 100 Terjual",
                        style: medium(AppColor.greyColor, 14),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
