import 'dart:convert';

import 'package:astro_app/model/blog_model.dart';
import 'package:astro_app/utils/common_loader.dart';
import 'package:dio/dio.dart';

class BlogRepository {
  Dio client;

  BlogRepository({required this.client});

  Future<List<BlogModel>> getBlogApi() async {
    try {
      Response res = await client.get("/blog/get-all");
      CommonLoader.hideLoading();
      if (res.statusCode == 200) {
        return blogModelFromJson(jsonEncode(res.data["data"]));
      }
      else {
        return Future.error(res.data["error"]);
      }
    } on DioError catch (e) {
      CommonLoader.hideLoading();
      return Future.error(e.message);
    }
  }
}
