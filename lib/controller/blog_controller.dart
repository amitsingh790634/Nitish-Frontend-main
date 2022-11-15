import 'dart:developer';

import 'package:astro_app/model/blog_model.dart';
import 'package:astro_app/network/blog_repo.dart';
import 'package:astro_app/server/api_client.dart';
import 'package:astro_app/utils/packag.dart';

class BlogController extends GetxController with StateMixin<List<BlogModel>> {
  @override
  void onInit() {
    getBlogAll();
    super.onInit();
  }

  getBlogAll() {
    try {
      ApiClient client = ApiClient();
      BlogRepository repository = BlogRepository(client: client.init());
      repository.getBlogApi().then((value) {
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
