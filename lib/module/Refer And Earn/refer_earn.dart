import 'package:astro_app/utils/packag.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../utils/styles.dart';
import '../../widget/appbar.dart';

class ReferEarnScreen extends StatefulWidget {
  const ReferEarnScreen({Key? key}) : super(key: key);

  @override
  State<ReferEarnScreen> createState() => _ReferEarnScreenState();
}

class _ReferEarnScreenState extends State<ReferEarnScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppbar(
          title: 'Refer and Earn',
        ),
        body: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.end,
            // crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.63,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  //  shrinkWrap: true,

                  padding: EdgeInsets.only(left: 10, top: 20),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/images/refer.png",
                        scale: 4,
                      ),
                      Text(
                        "Share the link with your friends",
                        style: txtGrey,
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Text(
                        "and family, you both will be rewarded",
                        style: txtGrey,
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Text(
                        "Your referal code : ",
                        style: txtGrey,
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Text(
                        "ZOHVP",
                        style: TextStyle(
                            color: Color(0xff2EA32B),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Roboto'),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Text(
                        "Refer or invite via ",
                        style: txtGrey,
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            "assets/images/via.png",
                            scale: 4,
                          ),
                          //      SizedBox(
                          //   height: 2.h,
                          // ),
                          Spacer(flex: 15),
                          Image.asset(
                            "assets/images/facebook.png",
                            scale: 4,
                          ),
                          Spacer(flex: 2),
                          Image.asset(
                            "assets/images/insta.png",
                            scale: 4,
                          ),
                          Spacer(flex: 2),
                          Image.asset(
                            "assets/images/share.png",
                            scale: 4,
                          ).paddingOnly(right: 20),
                        ],
                      ),
                      Image.asset("assets/images/invite.png")
                          .paddingOnly(right: 20, top: 10),
                      SizedBox(
                        height: 2.h,
                      ),
                      Image.asset(
                        "assets/images/refertext.png",
                        scale: 4,
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Image.asset("assets/images/refertext2.png"),
                      SizedBox(
                        height: 2.h,
                      ),
                      Image.asset("assets/images/note.png"),
                      // SizedBox(
                      //   height: 2.h,
                      // ),
                      Image.asset("assets/images/note1.png")
                          .paddingOnly(right: 20),
                      SizedBox(
                        height: 2.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            "assets/images/Invitationlist.png",
                            scale: 3,
                          ),
                          Image.asset(
                            "assets/images/total.png",
                            scale: 4,
                          ).paddingOnly(right: 20),
                        ],
                      ),
                    ],
                  ).centered(),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.27,
                width: MediaQuery.of(context).size.width,
                color: Color(0xffFFE794),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    2.h.heightBox,
                    Text(
                      "Refer and earn ",
                      style: txtGreyL,
                    ),
                    2.h.heightBox,
                    Text(
                      "Your friend gets Rs 30. after sign up\n and phone verification.",
                      style: textRegularL,
                    ),
                    2.h.heightBox,
                    Text(
                      "Ask your family or friends for referral code",
                      style: txtGreyL,
                    ),
                    2.h.heightBox,
                    Container(
                      height: 7.h,
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xff999999)),
                          color: Colors.white),
                      child: Padding(
                        padding: EdgeInsets.only(left: 20, top: 5),
                        child: TextFormField(
                          style: txtGreyL,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              suffixIcon: Image.asset(
                                'assets/images/submit.png',
                                scale: 3,
                              ).paddingOnly(right: 1.h, bottom: 1.h),
                              hintText: 'Enter your referral code'),
                        ),
                      ),
                    ),
                    2.h.heightBox,
                  ],
                ).paddingOnly(right: 20, left: 10),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
