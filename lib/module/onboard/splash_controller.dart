import 'dart:async';

import 'package:astro_app/module/homescreen/home_view.dart';
import 'package:astro_app/module/homescreen/nav_bar.dart';
import 'package:astro_app/module/onboard/on_board_screen.dart';
import 'package:astro_app/module/user/login_screen.dart';
import 'package:astro_app/server/api_client.dart';
import 'package:astro_app/utils/packag.dart';
import 'package:get_storage/get_storage.dart';

class SplashController extends GetxController{
   @override
  void onInit() {
    Timer(const Duration(seconds: 3), () {
      checkLogin();
    });
    super.onInit();
  }

  checkLogin() async {
    GetStorage box = GetStorage();
    try {
      String? token = box.read("token");
      if (token != null) {
        ApiClient.token = token;    
        Get.off(() => NavBarIndex(0));        
      } else {
       Get.off(() => const OnBoardScreen());
      }
    } on Exception catch (e) {
      Get.off(() => LoginScreen());
    }
  }
}
 