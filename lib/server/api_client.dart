import 'package:dio/dio.dart';
import 'package:get_storage/get_storage.dart';

class ApiClient {
  static String token = "";
  static String baseImg = "http://mern.online:2997";
  static String imgUrl = "$baseImg/public/images/";

  Dio init() {
    Dio _dio = Dio();
    _dio.interceptors.add(ApiInterceptors());
    _dio.options.baseUrl = "http://mern.online:2997";
    return _dio;
  }
}

class ApiInterceptors extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    GetStorage box = GetStorage();
    var token = await box.read("token");
    if (token != null) {
      // ignore: prefer_interpolation_to_compose_strings
      options.headers["Authorization"] = "Bearer " + token;
    }
    super.onRequest(options, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    super.onError(err, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    super.onResponse(response, handler);
  }
}
