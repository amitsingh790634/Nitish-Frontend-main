import 'dart:convert';
import 'dart:developer';

import 'package:astro_app/model/getall_astro_model.dart';
import 'package:astro_app/utils/common_loader.dart';
import 'package:dio/dio.dart';

class GetAstroRepo {
  Dio client;
  GetAstroRepo({required this.client});

  Future<List<GetAstroModel>> getAstroApi({required String id}) async {
    try {
      Response response = await client.get("/user/get-all/$id");
      CommonLoader.hideLoading();
      if (response.statusCode == 200) { 
        return getAstroModelFromJson(jsonEncode(response.data["data"]));
      } else {
        log("api else $response");
        return Future.error(response.data["error"]);
      }
    } on DioError catch (e) {
      CommonLoader.hideLoading();
      log("api dio $e");
      return Future.error(e.message);
    }
  }
}
