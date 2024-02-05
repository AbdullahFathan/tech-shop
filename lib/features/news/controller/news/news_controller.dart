import 'package:get/get.dart';
import 'package:tech_shop/features/news/models/news_model.dart';

enum STATUS {
  initial,
  loading,
  success,
  eror,
}

class NewsController extends GetxController {
  var status = STATUS.initial.obs;
  var listNews = List.generate(8, (index) => dummyModel);
  var showFab = false.obs;

  void handleShowFab(bool show) {
    showFab.value = show;
  }
}
