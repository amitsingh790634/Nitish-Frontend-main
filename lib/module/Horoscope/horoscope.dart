import 'package:astro_app/utils/packag.dart';
import 'package:flutter/gestures.dart';

import '../../utils/styles.dart';
import '../../widget/appbar.dart';

class HoroscopeScreen extends StatefulWidget {
  const HoroscopeScreen({Key? key}) : super(key: key);

  @override
  State<HoroscopeScreen> createState() => _HoroscopeScreenState();
}

class _HoroscopeScreenState extends State<HoroscopeScreen> {
  List<String> heading = [
    'PROFESSION',
    'EMOTIONS',
    'HEALTH',
    'TRAVEL',
    'LOVE',
    'LUCK'
  ];

  List zodiac = [
    "Aries",
    "Taurus",
    "Gemini",
    "Cancer",
    "Leo",
    "Virgo",
    "Libra",
    "Scorpius",
    "Pisces"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppbar(title: "Horoscope"),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Image.asset(
                "assets/images/bg.png",
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
              Column(
                children: [
                  SizedBox(
                    height: 20.h,
                    child: ListView.builder(
                        itemCount: zodiac.length,
                        shrinkWrap: true,
                        physics: AlwaysScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        dragStartBehavior: DragStartBehavior.start,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            width: 16.h,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: greyClr,
                              ),
                              color: Color(0xffF3F73C),
                            ),
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/images/aries.png",
                                  scale: 2,
                                ),
                                1.h.heightBox,
                                Text(
                                  zodiac[index],
                                  style: textRegularL,
                                ),
                                1.h.heightBox,
                                Text(
                                  "19 mar - 21 mar",
                                  style: txtGrey,
                                )
                              ],
                            ),
                          ).paddingAll(10);
                        }),
                  ).paddingAll(5),
                  Container(
                    width: 95.h,
                    child: ListView.builder(
                        itemCount: heading.length,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        dragStartBehavior: DragStartBehavior.start,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            width: 16.h,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: greyClr,
                              ),
                              color: appbg,
                            ),
                            child: Column(
                              children: [
                                Text(
                                  heading[index],
                                  style: textRegularL,
                                ).paddingOnly(top: 2.h),
                                2.h.heightBox,
                                Text(
                                  "Lorem ipsum dolor sit amet. Et \nconsequatur exercitationem aut sunt \nadipisci vel dolorem obcaecati. Non ",
                                  style: txtGreyL,
                                ),
                              ],
                            ).paddingOnly(bottom: 5.h),
                          ).paddingAll(10);
                        }).paddingAll(5),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    color: Color(0xffFFE794),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        2.h.heightBox,
                        Text(
                          '''Want to know your detailed and more personalised horoscope for yourself ? Start talking to our best astrologers.''',
                          style: txtGreyL,
                          textAlign: TextAlign.center,
                        ).paddingOnly(right: 5, left: 5),
                        1.h.heightBox,
                        Container(
                          height: 5.5.h,
                          color: btnorange,
                          child: Text(
                            "TALK TO ASTROLOGERS",
                            style: TextStyle(
                              color: whiteclr,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ).centered(),
                        ).paddingOnly(right: 10, left: 10),
                        3.h.heightBox,
                      ],
                    ).paddingOnly(right: 20, left: 10),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
