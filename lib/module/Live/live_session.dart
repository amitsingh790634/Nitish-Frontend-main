import 'package:astro_app/utils/packag.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../utils/styles.dart';
import '../../widget/appbar.dart';

class LiveSessionScreen extends StatefulWidget {
  const LiveSessionScreen({Key? key}) : super(key: key);

  @override
  State<LiveSessionScreen> createState() => _LiveSessionScreenState();
}

class _LiveSessionScreenState extends State<LiveSessionScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppbar(
          title: 'Live Session',
        ),
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Currently live",
              style: textRegularL,
            ),
            2.h.heightBox,
            Container(
              height: 20.h,
              decoration: BoxDecoration(
                color: Color(0xfff4d258),
                image: new DecorationImage(
                  image: new AssetImage("assets/images/background.png"),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "assets/images/live.png",
                        scale: 4,
                      ),
                      CircleAvatar(
                          radius: (40),
                          backgroundColor: Colors.transparent,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset("assets/images/userimage.png"),
                          )),
                    ],
                  ).paddingOnly(top: 20, bottom: 2.h),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      5.h.heightBox,
                      Text(
                        "Love and 2nd marriage ",
                        style: textRegularL,
                      ),
                      1.h.heightBox,
                      Text(
                        "Hindi, Bengali ",
                        style: txtGrey,
                      ),
                      1.h.heightBox,
                      Text(
                        "07 Jun, Tue | 08:00 Pm ",
                        style: txtGrey,
                      ),
                    ],
                  ).paddingOnly(top: 20, bottom: 20),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "assets/images/share1.png",
                        scale: 3,
                      ),
                      Image.asset(
                        "assets/images/join.png",
                        scale: 5,
                      ),
                    ],
                  ).paddingOnly(top: 20, bottom: 20),
                ],
              ).paddingOnly(right: 10, left: 10),
            ),
            2.h.heightBox,
            Container(
              height: 20.h,
              decoration: BoxDecoration(
                color: Color(0xfff4d258),
                image: new DecorationImage(
                  image: new AssetImage("assets/images/background.png"),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "assets/images/live.png",
                        scale: 4,
                      ),
                      CircleAvatar(
                          radius: (40),
                          backgroundColor: Colors.transparent,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset("assets/images/userimage.png"),
                          )),
                    ],
                  ).paddingOnly(top: 20, bottom: 2.h),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      5.h.heightBox,
                      Text(
                        "Love and 2nd marriage ",
                        style: textRegularL,
                      ),
                      1.h.heightBox,
                      Text(
                        "Hindi, Bengali ",
                        style: txtGrey,
                      ),
                      1.h.heightBox,
                      Text(
                        "07 Jun, Tue | 08:00 Pm ",
                        style: txtGrey,
                      ),
                    ],
                  ).paddingOnly(top: 20, bottom: 20),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "assets/images/share1.png",
                        scale: 3,
                      ),
                      Image.asset(
                        "assets/images/join.png",
                        scale: 5,
                      ),
                    ],
                  ).paddingOnly(top: 20, bottom: 20),
                ],
              ).paddingOnly(right: 10, left: 10),
            ),
            2.h.heightBox,
            Text(
              "Upcoming",
              style: textRegularL,
            ),
            2.h.heightBox,
            Container(
              height: 20.h,
              decoration: BoxDecoration(
                color: Color(0xfff4d258),
                image: new DecorationImage(
                  image: new AssetImage("assets/images/background.png"),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "assets/images/live.png",
                        scale: 4,
                      ),
                      CircleAvatar(
                          radius: (40),
                          backgroundColor: Colors.transparent,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset("assets/images/userimage.png"),
                          )),
                    ],
                  ).paddingOnly(top: 20, bottom: 2.h),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      5.h.heightBox,
                      Text(
                        "Love and 2nd marriage ",
                        style: textRegularL,
                      ),
                      1.h.heightBox,
                      Text(
                        "Hindi, Bengali ",
                        style: txtGrey,
                      ),
                      1.h.heightBox,
                      Text(
                        "07 Jun, Tue | 08:00 Pm ",
                        style: txtGrey,
                      ),
                    ],
                  ).paddingOnly(top: 20, bottom: 20),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "assets/images/share1.png",
                        scale: 3,
                      ),
                      Image.asset(
                        "assets/images/notify.png",
                        scale: 5,
                      ),
                    ],
                  ).paddingOnly(top: 20, bottom: 20),
                ],
              ).paddingOnly(right: 10, left: 10),
            ),
            2.h.heightBox,
            Container(
              height: 20.h,
              decoration: BoxDecoration(
                color: Color(0xfff4d258),
                image: new DecorationImage(
                  image: new AssetImage("assets/images/background.png"),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "assets/images/live.png",
                        scale: 4,
                      ),
                      CircleAvatar(
                          radius: (40),
                          backgroundColor: Colors.transparent,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset("assets/images/userimage.png"),
                          )),
                    ],
                  ).paddingOnly(top: 20, bottom: 2.h),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      5.h.heightBox,
                      Text(
                        "Love and 2nd marriage ",
                        style: textRegularL,
                      ),
                      1.h.heightBox,
                      Text(
                        "Hindi, Bengali ",
                        style: txtGrey,
                      ),
                      1.h.heightBox,
                      Text(
                        "07 Jun, Tue | 08:00 Pm ",
                        style: txtGrey,
                      ),
                    ],
                  ).paddingOnly(top: 20, bottom: 20),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "assets/images/share1.png",
                        scale: 3,
                      ),
                      Image.asset(
                        "assets/images/notify.png",
                        scale: 5,
                      ),
                    ],
                  ).paddingOnly(top: 20, bottom: 20),
                ],
              ).paddingOnly(right: 10, left: 10),
            ),
            5.h.heightBox,
          ]).paddingOnly(right: 20, left: 20),
        ),
      ),
    );
  }
}
