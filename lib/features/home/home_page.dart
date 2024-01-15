import 'package:flutter/material.dart';
import 'package:tech_shop/global_widgets/appbar.dart';
import 'package:tech_shop/global_widgets/carousel.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(text: "Home Page"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Home Page"),
            Container(
              height: 120,
              margin: const EdgeInsets.only(top: 50),
              child: const MyCarousel(),
            ),
          ],
        ),
      ),
    );
  }
}
