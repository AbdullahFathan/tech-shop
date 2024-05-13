import 'package:flutter/material.dart';
import 'package:tech_shop/utils/global_widgets/appbar.dart';
import 'package:tech_shop/utils/global_widgets/product_card.dart';

class LikedProductPage extends StatelessWidget {
  const LikedProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        text: "Liked Product",
      ),
      body: GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 35),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 20,
          childAspectRatio: 0.5,
          mainAxisExtent: 250,
        ),
        itemCount: 8,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return const ProductCard();
        },
      ),
    );
  }
}
