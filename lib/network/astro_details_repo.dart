import 'dart:convert';
import 'dart:developer';

import 'package:astro_app/model/astro_detail_model.dart';
import 'package:dio/dio.dart';

class AstroDetailsRepo {
  Dio client;

  AstroDetailsRepo({required this.client});

  Future<AstroDetailModel> getAstroDetail({required String id}) async{
    try {
      Response r = await client.get("/user/view-user-details/$id");
      if (r.statusCode == 200) { 
        log(" 200 detail $r");
        return astroDetailModelFromJson(jsonEncode(r.data["data"]));
      } else {
        log("error $r");
        return Future.error(r.data["error"]);
      }
     } on DioError catch (e) {
        log("dio err $e");
      return Future.error(e.message);
      }
  }
}
