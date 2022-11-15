import 'dart:developer';

import 'package:astro_app/module/homescreen/nav_bar.dart';
import 'package:astro_app/module/user/otp_screen.dart';
import 'package:astro_app/utils/common_loader.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart' as g;
import 'package:get_storage/get_storage.dart';

import '../module/homescreen/home_view.dart';

class LoginRepository {
  Dio client;
  LoginRepository({required this.client});

  loginApi({required String mobile}) async {
    CommonLoader.showLoading();

    try {
      var data = {"mobile_Number": mobile};
      Response response = await client.post("/auth/signUp", data: data);
      CommonLoader.hideLoading();
      if (response.statusCode == 200) {
        log("login $response");
        g.Get.to(() => OtpScreen());
      } else {
        log("else $response[message]");
        CommonLoader.showErrorDialog(description: response.data.toString());
      }
    } on DioError catch (e) {
      log("dio error $e.toString");
      CommonLoader.hideLoading();
      CommonLoader.showErrorDialog(description: e.message.toString());
    }
  }

  verifyOtpApi(
    String mobile,
    String otp,) async {
    try {
      var data = {"mobile_Number": mobile, "otp": otp};
      Response response = await client.post("/auth/verify", data: data);
      CommonLoader.hideLoading();
      if (response.statusCode == 200) {
        GetStorage box = GetStorage();
        String token = response.data['token'];
        await box.write("token", token);
        log("send otp $response");
        g.Get.offAll(() => NavBarIndex(0));
      }else {
        log("else $response[message]");
        CommonLoader.showErrorDialog(description: response.data.toString());
      }
    } on DioError catch (e) {
      CommonLoader.hideLoading();
      CommonLoader.showErrorDialog(description: e.message.toString());
    }
  }
}
