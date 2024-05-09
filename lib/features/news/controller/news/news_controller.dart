import 'package:get/get.dart';
import 'package:tech_shop/features/news/services/news_services.dart';

enum STATUS {
  initial,
  loading,
  success,
  eror,
}

class NewsController extends GetxController {
  var status = STATUS.initial.obs;
  var showFab = false.obs;
  var erorMsg = "".obs;
  var listNews = [];

  //Send data to api
  var selectedDrop = 'News'.obs;
  var page = 1.obs;

  final NewsServices _newsServices = NewsServices();

  //handle show fab button
  void handleShowFab(bool show) {
    showFab.value = show;
  }

  //handle dropdown button value
  void handleDropDown(String value) {
    selectedDrop.value = value;
  }

  //fetch all news at first render
  void fetchNews(bool isRefersh) async {
    status.value = STATUS.loading;

    //user refersh item, so clear all data in [listNews] and [page] as 1
    if (isRefersh) {
      listNews.clear();
      page.value = 1;
    }

    try {
      var response = await _newsServices.fetcNews(
        selectedDrop.value.toLowerCase(),
        page.value,
      );

      if (response.isNotEmpty) {
        listNews.addAll(response);
        status.value = STATUS.success;
      }
    } catch (eror) {
      status.value = STATUS.eror;
      Get.snackbar("Eror", eror.toString());
    }
  }

  @override
  void onReady() {
    fetchNews(false);
    super.onReady();
  }
}
