import 'package:astro_app/module/settings/setttings_controller.dart';
import 'package:astro_app/utils/packag.dart';
import 'package:astro_app/utils/styles.dart';
import 'package:astro_app/widget/appbar.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

SettingController _s = Get.put(SettingController());

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appbg,
      appBar: MyAppbar(title: 'Settings'),
      body: SingleChildScrollView(
          padding: EdgeInsets.only(top: 20, left: 10),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              2.h.heightBox,
              Container(
                height: 60,
                width: 90.w,
                decoration: BoxDecoration(
                    border: Border.all(color: lightgrey, width: 1),
                    color: whiteclr,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Obx(
                  () => Row(
                    children: [
                      Text('Daily Horoscope notification'),
                      Spacer(),
                      Switch(
                        onChanged: (_) => _s.isActive.toggle(),
                        value: _s.isActive.value,
                        activeColor: btnorange,
                        activeTrackColor: btnlightorange,
                      ),
                    ],
                  ).pSymmetric(h: 10),
                ),
              ),
              2.h.heightBox,
              Container(
                height: 60,
                width: 90.w,
                decoration: BoxDecoration(
                    border: Border.all(color: greyClr, width: 1),
                    color: whiteclr,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                  children: const [
                    Text('Reset notifications'),
                  ],
                ).pSymmetric(h: 10),
              ),
              2.h.heightBox,
              Container(
                height: 60,
                width: 90.w,
                decoration: BoxDecoration(
                    border: Border.all(color: lightgrey, width: 1),
                    color: whiteclr,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                  children: const [
                    Text('Logout'),
                  ],
                ).pSymmetric(h: 10),
              ),
            ],
          ).centered()),
    );
  }
}
