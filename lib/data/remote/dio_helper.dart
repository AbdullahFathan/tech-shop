import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:tech_shop/data/local/local_storange.dart';

class DioHelper {
  DioHelper() {
    _dio = Dio(
      BaseOptions(
        baseUrl: dotenv.env['API_URL']!,
      ),
    )..interceptors.addAll([DioInterceptor()]);
  }

  late Dio _dio;

  Dio get dio => _dio;
}

class DioInterceptor extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final authToken = await LocalStorage.readFromCache("${dotenv.env['USER']}");

    if (authToken != null) {
      options.headers['Authorization'] = 'Bearer $authToken';
    }

    return super.onRequest(options, handler);
  }
}
