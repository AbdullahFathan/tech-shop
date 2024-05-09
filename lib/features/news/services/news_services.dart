import 'package:tech_shop/features/news/models/news_model.dart';
import 'package:tech_shop/utils/dio_helper.dart';

class NewsServices {
  final _dio = DioHelper().dio;

  Future<List<NewsModel>> fetcNews(
    String category,
    int page,
  ) async {
    List<NewsModel> data = [];
    try {
      final response = await _dio.get("/api/tech/$category?page=$page");

      if (response.statusCode == 200) {
        for (var item in response.data) {
          NewsModel dataJson = NewsModel.fromJson(item);
          data.add(dataJson);
        }
      }
    } catch (eror) {
      throw Exception(eror);
    }
    return data;
  }
}
