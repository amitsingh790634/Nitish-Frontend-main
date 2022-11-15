import 'dart:developer';

import 'package:astro_app/model/astro_detail_model.dart';
import 'package:astro_app/network/astro_details_repo.dart';
import 'package:astro_app/server/api_client.dart';
import 'package:astro_app/utils/packag.dart';

class AstroDetailController extends GetxController
    with StateMixin<AstroDetailModel> {
  String astroId = Get.arguments;

  @override
  void onInit() {
   log("args ${Get.arguments}");
    astroDetail();
    super.onInit();
  }

  astroDetail() {
    try {
      ApiClient client = ApiClient();
      AstroDetailsRepo repo = AstroDetailsRepo(client: client.init());
      repo.getAstroDetail(id: astroId).then((value) {
        change(value, status: RxStatus.success());
      }, onError: (err) {
        change(null, status: RxStatus.error(err.toString()));
      });
    } on Exception catch (e) {
      change(null, status: RxStatus.error(e.toString()));
    }
  }
}
