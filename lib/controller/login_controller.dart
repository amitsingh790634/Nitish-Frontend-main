
import 'dart:developer';

import 'package:astro_app/network/login_repo.dart';
import 'package:astro_app/server/api_client.dart';
import 'package:astro_app/utils/packag.dart';

class LoginController extends GetxController{

   GlobalKey<FormState> loginFormKey = GlobalKey();
   TextEditingController mobNo = TextEditingController();

   sendotp() async {
    try{
    if (loginFormKey.currentState!.validate()) {
      ApiClient client = ApiClient();
      LoginRepository loginRepository = LoginRepository(client: client.init());
      loginRepository.loginApi(mobile: mobNo.text);
    }
    }catch (error) {
      log(error.toString());
    } 
  } 
}