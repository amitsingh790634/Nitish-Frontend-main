import 'dart:developer';

import 'package:astro_app/model/banner_model.dart';
import 'package:astro_app/network/banner_repo.dart';
import 'package:astro_app/server/api_client.dart';
import 'package:astro_app/utils/packag.dart';

class BannerController extends GetxController
    with StateMixin<List<BannerModel>> {

  @override
  void onInit() {
    getBanner();
    super.onInit();
  } 

  getBanner() {
    try {
      ApiClient apiClient = ApiClient();
      BannerRepo repo = BannerRepo(client: apiClient.init());
      repo.getBannerApi().then((value) {
        if (value.isNotEmpty) {
          change(value, status: RxStatus.success());
        } else {
          change(null, status: RxStatus.empty());
        }
      }, onError: (err) {
        change(null, status: RxStatus.error(err.toString()));
        log("on error $err");
      });
    } catch (e) {
      change(null, status: RxStatus.error(e.toString()));
    }
  }
}
