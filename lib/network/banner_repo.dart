import 'dart:convert';

import 'package:astro_app/model/banner_model.dart';
import 'package:astro_app/utils/common_loader.dart';
import 'package:dio/dio.dart';

class BannerRepo {
  Dio client;
  BannerRepo({required this.client});

  Future<List<BannerModel>> getBannerApi() async {
     
    try {
      Response response = await client.get("/banner/getBanner");
      CommonLoader.hideLoading();
      if (response.statusCode == 200) {
        return bannerModelFromJson(jsonEncode(response.data["data"]));
      } else {
        return Future.error(response.data["error"]);
      }
    } on DioError catch (e) {
      CommonLoader.hideLoading();
      return Future.error(e.message);
    }
  }
}
