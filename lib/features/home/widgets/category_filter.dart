import 'package:flutter/material.dart';
import 'package:tech_shop/config/app_color.dart';
import 'package:tech_shop/config/app_fonts.dart';

class CategoryFilter extends StatelessWidget {
  const CategoryFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 8,
        itemBuilder: (context, index) => SizedBox(
          height: 50,
          width: 100,
          child: Column(
            children: [
              Material(
                color: AppColor.greenColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                child: const Padding(
                  padding: EdgeInsets.all(8),
                  child: Text("Data"),
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                "Category ${index + 1}",
                style: reguler(AppColor.blackColor, 12),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
