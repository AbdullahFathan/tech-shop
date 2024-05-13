import 'package:flutter/material.dart';
import 'package:tech_shop/config/app_color.dart';
import 'package:tech_shop/config/app_fonts.dart';
import 'package:tech_shop/features/home/widgets/category_filter.dart';
import 'package:tech_shop/features/home/widgets/search_product.dart';
import 'package:tech_shop/utils/global_widgets/product_card.dart';
import 'package:tech_shop/utils/global_widgets/appbar.dart';
import 'package:tech_shop/utils/global_widgets/carousel.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(text: "Home Page"),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 10),
        children: [
          //search, cart icon, and like product icon
          const SearchProduct(),

          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              "Promo Hari ini",
              style: bold(AppColor.blackColor, 18),
            ),
          ),

          Container(
            height: 120,
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: MyCarousel(
              autoPlay: true,
              items: List.generate(
                5,
                (index) => Card(
                  color: Colors.blue,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  child: Center(
                    child: Text(
                      "Number $index",
                      style: const TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              "Kategori Belanjamu",
              style: bold(AppColor.blackColor, 18),
            ),
          ),

          //filter product by category
          const CategoryFilter(),

          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              "Temukan Sensansi Gaming Terbaikmu",
              style: bold(AppColor.blackColor, 18),
            ),
          ),

          GridView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 20,
              childAspectRatio: 0.5,
              mainAxisExtent: 250,
            ),
            itemCount: 4,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return const ProductCard();
            },
          ),
        ],
      ),
    );
  }
}
