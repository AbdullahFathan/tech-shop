import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tech_shop/config/app_color.dart';
import 'package:tech_shop/config/app_fonts.dart';
import 'package:tech_shop/features/news/controller/news/news_controller.dart';
import 'package:tech_shop/features/news/views/widgets/dropdown.dart';
import 'package:tech_shop/features/news/views/widgets/news_card.dart';
import 'package:tech_shop/global_widgets/appbar.dart';
import 'package:tech_shop/global_widgets/shimmer_loading.dart';
import 'package:tech_shop/global_widgets/state_helper.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NewsController());
    final ScrollController scrollController = ScrollController();

    scrollController.addListener(() {
      if (scrollController.position.pixels > 200) {
        // Show FAB Button
        if (!controller.showFab.value) {
          controller.handleShowFab(true);
        }
      } else {
        // Hide FAB Button
        if (controller.showFab.value) {
          controller.handleShowFab(false);
        }
      }
    });

    return Scaffold(
      appBar: const CustomAppBar(text: "News Page"),
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () => controller.refershPage(),
          child: Obx(() => StateHelperWidget(
              isLoading: controller.isLoading,
              isEmpty: controller.isEmpty,
              isEror: controller.isEror,
              loadingWidget: ListView.builder(
                itemCount: 8,
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 10,
                ),
                itemBuilder: (context, index) => const ShimmerLoading(
                  child: ShimmerItem(
                    height: 160,
                    witdh: double.infinity,
                  ),
                ),
              ),
              body: ListView(
                controller: scrollController,
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 10,
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 5,
                      bottom: 18,
                    ),
                    child: Text(
                      "Temukan Berita Teknologi",
                      style: bold(AppColor.blackColor, 18),
                    ),
                  ),
                  //Dropdown category news
                  const KDropDownWidget(),
                  const SizedBox(height: 30),
                  ListView.builder(
                    itemCount: controller.dataResult?.length ?? 0,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return KNewsCard(
                        item: controller.dataResult?[index],
                      );
                    },
                  ),
                ],
              ))),
        ),
      ),
      floatingActionButton: Obx(
        () => Visibility(
          visible: controller.showFab.value,
          child: FloatingActionButton(
            shape: const CircleBorder(),
            backgroundColor: AppColor.purpleColor,
            onPressed: () {
              scrollController.animateTo(
                0,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              );
            },
            child: const Icon(
              Icons.arrow_upward,
              color: AppColor.whiteColor,
            ),
          ),
        ),
      ),
    );
  }
}
