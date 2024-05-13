import 'package:flutter/material.dart';
import 'package:tech_shop/config/app_color.dart';
import 'package:tech_shop/config/app_fonts.dart';

import 'package:tech_shop/features/news/models/detail_news_model.dart';
import 'package:tech_shop/features/news/views/widgets/contet_news.dart';
import 'package:tech_shop/utils/global_widgets/appbar.dart';

class DetailNewsPage extends StatelessWidget {
  final DetailNewsModel item;
  const DetailNewsPage({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(text: "News"),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 16,
          ),
          children: [
            Padding(
              padding: const EdgeInsets.only(
                bottom: 10,
                top: 5,
              ),
              child: Text(
                item.title,
                style: bold(
                  AppColor.blackColor,
                  18,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
              ),
              child: Text(
                "Author: ${item.author}",
                style: medium(
                  AppColor.blackColor,
                  14,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
              ),
              child: Text(
                "Date: ${item.date}",
                style: medium(
                  AppColor.blackColor,
                  14,
                ),
              ),
            ),
            ContentWidget(
              content: item.content,
            ),
          ],
        ),
      ),
    );
  }
}
