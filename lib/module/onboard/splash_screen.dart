import 'package:astro_app/module/onboard/splash_controller.dart';
import 'package:astro_app/utils/packag.dart';
import 'package:astro_app/utils/styles.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  SplashController controller = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: whiteclr,
      // decoration: const BoxDecoration(
      //   image: DecorationImage(
      //       image: AssetImage("assets/images/img1.png"), fit: BoxFit.fill),
      // ),
      child: Center(
        child: Image.asset("assets/images/img1.png", height: 50.h,fit: BoxFit.fill)),
    );
  }
}
