import 'package:flutter/material.dart';

class MyCarousel extends StatefulWidget {
  const MyCarousel({super.key});

  @override
  State<MyCarousel> createState() => _MyCarouselState();
}

class _MyCarouselState extends State<MyCarousel> {
  final List<String> items = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5"];
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return buildCarouselItem(items[index]);
            },
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
          ),
        ),
        buildDotIndicator(),
      ],
    );
  }

  Widget buildCarouselItem(String item) {
    return Card(
      color: Colors.blue,
      margin: const EdgeInsets.symmetric(horizontal: 60),
      child: Center(
        child: Text(
          item,
          style: const TextStyle(fontSize: 20.0, color: Colors.white),
        ),
      ),
    );
  }

  Widget buildDotIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(items.length, (index) {
        return Container(
          width: 10.0,
          height: 10.0,
          margin: const EdgeInsets.symmetric(
            horizontal: 5.0,
            vertical: 10,
          ),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _currentPage == index ? Colors.blue : Colors.grey,
          ),
        );
      }),
    );
  }
}
