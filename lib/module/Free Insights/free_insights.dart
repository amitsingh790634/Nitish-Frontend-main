import 'dart:ui';

import 'package:astro_app/controller/blog_controller.dart';
import 'package:astro_app/module/Horoscope/horoscope.dart';
import 'package:astro_app/server/api_client.dart';
import 'package:astro_app/utils/packag.dart';
import 'package:astro_app/widget/appbar.dart';
import 'package:flutter/gestures.dart';

import '../../utils/styles.dart';

class FreeInsightsScreen extends StatefulWidget {
  const FreeInsightsScreen({Key? key}) : super(key: key);

  @override
  State<FreeInsightsScreen> createState() => _FreeInsightsScreenState();
}

class _FreeInsightsScreenState extends State<FreeInsightsScreen> {
  get textRegularL => null;

  BlogController _controller = Get.put(BlogController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: MyAppbar(title: "Free Insights"),
      body: ListView(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 23.h,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Color(0xffd1b1fc),
                borderRadius: BorderRadius.circular(4)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "assets/images/ball.png",
                  scale: 3,
                ),
                Text(
                  "Daily horoscope",
                  style: textRegularL,
                ),
                1.h.heightBox,
                InkWell(
                  onTap: () {
                    Get.to(() => HoroscopeScreen());
                  },
                  child: Image.asset(
                    "assets/images/know.png",
                    scale: 3,
                  ),
                )
              ],
            ).paddingOnly(top: 1.h, bottom: 1.h),
          ).centered(),
          2.h.heightBox,
          Column(
            children: [
              Text(
                "Our blogs",
                style: txtbigBlack,
              )
            ],
          ),
          2.h.heightBox,

          _controller.obx((state) => 
              SizedBox(
              height: 58.h,
              child: ListView.builder(
                  itemCount: state!.length,
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(), 
                  scrollDirection: Axis.vertical,
                  dragStartBehavior: DragStartBehavior.start,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      width: 95.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: greyClr, width: 2),
                      ),
                      child: Column(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 16.h, 
                                width: 90.w,
                                child: Image.network(
                                 ApiClient.baseImg + state[index].blogImages[0],
                                      fit: BoxFit.fill,
                                      errorBuilder: (context, error, stackTrace) => 
                                      Image.asset(
                                        "assets/images/list.png", fit: BoxFit.cover,),
                                ),
                              ),
                              2.h.heightBox,
                               Text(
                               state[index].intro,
                                style:const TextStyle(
                                    color: blckclr,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Roboto'),
                              ).paddingOnly(right: 5.h),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    state[index].userName,
                                    style: txtGrey,
                                  ),
                                  Text(
                                    state[index].date,
                                    style: txtGrey,
                                  )
                                ],
                              ).paddingOnly(
                                  right: 10, left: 10, top: 10, bottom: 10)
                            ],
                          ),
                        ],
                      ),
                    ).paddingOnly(bottom: 10);
                  }),
            ),
          )
        ],
      ).paddingOnly(right: 20, left: 20, top: 10),
    ));
  }
}
