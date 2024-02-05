import 'package:get/get.dart';
import 'package:tech_shop/features/news/controller/news/news_controller.dart';

class NewsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewsController>(() => NewsController());
  }
}
