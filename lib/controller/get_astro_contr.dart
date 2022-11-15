import 'dart:developer';

import 'package:astro_app/model/getall_astro_model.dart';
import 'package:astro_app/network/all_astro_repo.dart';
import 'package:astro_app/server/api_client.dart';
import 'package:astro_app/utils/packag.dart';

class GetAstroController extends GetxController
    with StateMixin<List<GetAstroModel>> {

String astroId= "";
 

  @override
  void onInit() {
    getAstro();
    super.onInit();
  }

  getAstro() {
    try{
      ApiClient client = ApiClient();
      GetAstroRepo repository = GetAstroRepo(client: client.init());
      repository.getAstroApi(id:astroId).then((value) {
        if (value.isNotEmpty) {
          change(value, status: RxStatus.success());
        } else {
          change(null, status: RxStatus.empty());
        }
      }, onError: (err) {
        change(null, status: RxStatus.error(err.toString()));
        log("on error $err");
      });
    } catch(e){
       change(null, status: RxStatus.error(e.toString()));
    }
  }
}
