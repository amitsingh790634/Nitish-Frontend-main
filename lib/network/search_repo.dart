
import 'dart:convert';
import 'dart:developer';

import 'package:astro_app/controller/search_control.dart';
import 'package:astro_app/model/search_model.dart';
import 'package:astro_app/utils/common_loader.dart';
import 'package:dio/dio.dart';

class SearchRepository {
  Dio client;

  SearchRepository({required this.client}); 
   
  Future<List<SearchModel>> getSearchResult({required String value}) async {
    try {
      Response response = await client.get("/user/search-language?search=$value");
      CommonLoader.hideLoading();
      if (response.statusCode == 200) {        
        SearchController().isLoading.value = false;
          return searchModelFromJson(jsonEncode(response.data["student"]));
      } else {
        return Future.error(response.data["error"]);
      }
    } on DioError catch (e) {
      log("dio catch : $e");
      CommonLoader.hideLoading();
      return Future.error(e.message);
    }
   
  }
}