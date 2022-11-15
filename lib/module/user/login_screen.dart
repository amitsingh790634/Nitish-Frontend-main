import 'package:astro_app/controller/login_controller.dart';
import 'package:astro_app/module/user/otp_screen.dart';
import 'package:astro_app/utils/packag.dart';
import 'package:astro_app/utils/styles.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final LoginController _controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
              padding: EdgeInsets.only(left: 10, top: 10),
              child: Form(
                key: _controller.loginFormKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () => Get.back(),
                          icon: const Icon(
                            Icons.arrow_back,
                            size: 25,
                            color: blckclr,
                          ),
                        ),
                        Image.asset('assets/images/logo.png',
                            height: 10.h, fit: BoxFit.fill),
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      "Sign In",
                      style: txtbigBlack,
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Text(
                      "Please sign in with phone number",
                      style: txtGrey,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      "Phone Number",
                      style: txtGrey,
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Container(
                        width: 90.w,
                        decoration: BoxDecoration(
                            color: whiteclr,
                            borderRadius: BorderRadius.circular(6.0),
                            border: Border.all(color: Color(0xffDDDCDC)),
                            boxShadow: const [
                              BoxShadow(
                                  color: greyClr, offset: Offset(1.0, 1.0))
                            ]),
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          controller: _controller.mobNo,
                          validator: (value) {
                            if (value == "") {
                              return 'Field can\'t be empty';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(15),
                            hintText: "Enter phone number",
                            border: InputBorder.none,
                            hintStyle: const TextStyle(
                                fontFamily: 'Roboto',
                                color: Color(0xff999999),
                                fontWeight: FontWeight.w300),
                            prefixIcon: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SizedBox(
                                  width: 2.w,
                                ),
                                CircleAvatar(
                                  radius: 20,
                                  backgroundColor: whiteclr,
                                  child: Image.asset("assets/images/ind.png"),
                                ),
                                SizedBox(
                                  width: 2.w,
                                ),
                                Text(
                                  " +91   ",
                                  style: txtblackNormal,
                                )
                              ],
                            ),
                          ),
                        )),
                    SizedBox(
                      height: 3.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        _controller.sendotp();
                        // Get.to(() => OtpScreen());
                      },
                      child: Image.asset(
                        'assets/images/sno.png',
                        width: 90.w,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ],
                ),
              ))),
    );
  }
}
