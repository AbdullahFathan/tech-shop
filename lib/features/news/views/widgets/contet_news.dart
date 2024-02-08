import 'package:flutter/material.dart';
import 'package:tech_shop/config/app_color.dart';
import 'package:tech_shop/config/app_fonts.dart';
import 'package:tech_shop/features/news/views/widgets/yt_widget.dart';
import 'package:tech_shop/global_widgets/shimmer_loading.dart';

class ContentWidget extends StatelessWidget {
  final List<String> content;

  const ContentWidget({Key? key, required this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: content.length,
      itemBuilder: (context, index) {
        final String item = content[index];
        return Padding(
          padding: const EdgeInsets.only(
            top: 10,
          ),
          child: childBuilder(item),
        );
      },
    );
  }

  Widget childBuilder(String item) {
    if (item.startsWith("http")) {
      if (item.contains("youtube.com")) {
        return SizedBox(
          height: 220,
          child: YtWidget(item: item),
        );
      } else {
        return SizedBox(
          height: 220,
          child: Image.network(
            item,
            fit: BoxFit.contain,
            cacheHeight: 220,
            loadingBuilder: (context, child, loadingProgress) =>
                const ShimmerLoading(
              child: ShimmerItem(
                marginTop: 0,
                height: 220,
              ),
            ),
            errorBuilder: (context, error, stackTrace) =>
                Text(error.toString()),
          ),
        );
      }
    } else {
      return Text(
        item,
        style: reguler(
          AppColor.blackColor,
          12,
        ),
      );
    }
  }
}
