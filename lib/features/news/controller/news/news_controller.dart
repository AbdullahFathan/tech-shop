import 'package:get/get.dart';
import 'package:tech_shop/data/local/base/base_controller.dart';
import 'package:tech_shop/features/news/models/news_model.dart';
import 'package:tech_shop/features/news/services/news_services.dart';

class NewsController extends BaseController<List<NewsModel>> {
  var showFab = false.obs;

  //Send data to api
  var selectedDrop = 'News'.obs;
  // var page = 1.obs;

  final NewsServices _newsServices = NewsServices();

  //handle show fab button
  void handleShowFab(bool show) {
    showFab.value = show;
  }

  //handle dropdown button value
  void handleDropDown(String value) {
    selectedDrop.value = value;
  }

  Future<void> refershPage() async {
    page(1);
    onLoadData();
  }

  void onLoadData() async {
    loadingState();

    try {
      var response = await _newsServices.fetcNews(
        selectedDrop.value.toLowerCase(),
        page.value,
      );

      page.value += 1;

      finishLoadData(data: response);
    } catch (e) {
      finishLoadData(errorMessage: e.toString());
    }
  }

  @override
  void onReady() {
    onLoadData();
    super.onReady();
  }
}
