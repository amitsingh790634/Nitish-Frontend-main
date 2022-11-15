import 'package:astro_app/controller/astro_detail_control.dart';
import 'package:astro_app/controller/get_astro_contr.dart';
import 'package:astro_app/server/api_client.dart';
import 'package:astro_app/utils/packag.dart';

import '../../utils/styles.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
    GetAstroController getAstroC = Get.find();
  final AstroDetailController _astroDetailController =
      Get.put(AstroDetailController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appbg,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: appbg,
          centerTitle: true,
          actions: [
            Image.asset('assets/icons/wallet.png'),
            Container(
              height: 20,
              width: 30,
              decoration: const BoxDecoration(
                  color: greenclr,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: const Text(
                '₹ 0',
                style: TextStyle(color: whiteclr),
              ).centered(),
            ).centered(),
            Image.asset(
              'assets/images/share1.png',
              scale: 3,
            ),
          ],
          actionsIconTheme: IconThemeData(color: Colors.blueAccent),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(left: 10),
          child: Column(
            children: [
              _astroDetailController.obx((state) => 
                 Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(50),
                          ),
                      ),
                           
                      child: Image.network(
                        ApiClient.baseImg + state!.userImages.toString(),
                             fit: BoxFit.fill,
                          errorBuilder: (context, error, stackTrace) => 
                          Image.asset("assets/images/profile.png",fit: BoxFit.fill),
                       ),
                    ),
                    10.widthBox,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          state.userName, style: textRegularL),
                        10.heightBox,
                        Row(
                          children: [
                            Container(
                              width: 65,
                              height: 26,
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: yellow,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '4.96 ',
                                    style: txtSmallBlack,
                                  ).pOnly(top: 2),
                                  // 5.widthBox,
                                  Image.asset(
                                    'assets/icons/star.png',
                                    color: Colors.black,
                                  )
                                ],
                              ).centered(),
                            ),
                            2.w.widthBox,
                              Text(
                               'Exp:${state.experince}',
                              style: const TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                        5.heightBox,
                        Row(
                          children: [
                            Text(
                              state.languages,
                              style: txtGrey,
                            ),
                            5.widthBox,
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            1.h.heightBox,
                            Container(
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                color: btnorange,
                              ),
                              child: const Text(
                                "Follow",
                                style: TextStyle(
                                  color: whiteclr,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                                  .centered()
                                  .pOnly(right: 15, left: 15, top: 5, bottom: 5),
                            ),
                            3.h.heightBox,
                          ],
                        ),
                      ],
                    ).pOnly(top: 15),
                  ],
                ),
              ),
              Stack(
                children: [
                  Positioned(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              7.h.heightBox,
                              Text(
                                "Skills",
                                style: txtGreyL,
                              ),
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      2.h.heightBox,
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(5),
                                          ),
                                          color: whiteclr,
                                        ),
                                        child: Text(
                                          "Vedic Astrology",
                                          style: txtblackNormal,
                                        ).centered().pOnly(
                                            right: 5,
                                            left: 5,
                                            top: 10,
                                            bottom: 10),
                                      ),
                                      3.h.heightBox,
                                    ],
                                  ),
                                  3.w.widthBox,
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      2.h.heightBox,
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(5),
                                          ),
                                          color: whiteclr,
                                        ),
                                        child: Text(
                                          "Psychic Reader",
                                          style: txtblackNormal,
                                        ).centered().pOnly(
                                            right: 5,
                                            left: 5,
                                            top: 10,
                                            bottom: 10),
                                      ),
                                      3.h.heightBox,
                                    ],
                                  ),
                                  3.w.widthBox,
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      2.h.heightBox,
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(5),
                                          ),
                                          color: whiteclr,
                                        ),
                                        child: Text(
                                          "Plamistry",
                                          style: txtblackNormal,
                                        ).centered().pOnly(
                                            right: 5,
                                            left: 5,
                                            top: 10,
                                            bottom: 10),
                                      ),
                                      3.h.heightBox,
                                    ],
                                  ),
                                ],
                              ),
                              Container(
                                width: 13.h,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5),
                                  ),
                                  color: whiteclr,
                                ),
                                child: Text(
                                  "Love astrology",
                                  style: txtblackNormal,
                                ).centered().pOnly(
                                    right: 5, left: 5, top: 10, bottom: 10),
                              ),
                              3.h.heightBox,
                              Text(
                                "About me ",
                                style: txtGreyL,
                              ),
                              2.h.heightBox,
                              Text(
                                "Lorem ipsum dolor sit amet. At totam mollitia rem magni voluptate aut dolor delectus ut deleniti dolor eum exercitationem sapiente in quia galisum et aspernatur odio. Et internos quia et quia veniam vel animi autem? Read more...",
                                style: txtGrey,
                              ),
                              2.h.heightBox,
                              Text(
                                "Customer Reviews",
                                style: txtGreyL,
                              ),
                              2.h.heightBox,
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/icons/star.png",
                                    color: Color(0xffEBFF00),
                                  ),
                                  3.w.widthBox,
                                  Text(
                                    "4.91 out of 5",
                                    style: textRegularL,
                                  ),
                                ],
                              ),
                              2.h.heightBox,
                              SizedBox(
                                height: 58.h,
                                child: ListView.builder(
                                    itemCount: 5,
                                    shrinkWrap: false,
                                    physics: NeverScrollableScrollPhysics(),
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              color: greyClr, width: 2),
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Column(
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      "Loreum lipsum",
                                                      style: textRegularL,
                                                    ),
                                                    Row(
                                                      children: [
                                                        Image.asset(
                                                          "assets/icons/star.png",
                                                          color:
                                                              Color(0xffEBFF00),
                                                        ),
                                                        Image.asset(
                                                          "assets/icons/star.png",
                                                          color:
                                                              Color(0xffEBFF00),
                                                        ),
                                                        Image.asset(
                                                          "assets/icons/star.png",
                                                          color:
                                                              Color(0xffEBFF00),
                                                        ),
                                                        Image.asset(
                                                          "assets/icons/star.png",
                                                          color:
                                                              Color(0xffEBFF00),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                            2.h.heightBox,
                                            Text(
                                              "June 7,2022",
                                              style: txtGrey,
                                            ),
                                          ],
                                        ).pOnly(
                                            right: 10,
                                            left: 10,
                                            top: 10,
                                            bottom: 10),
                                      ).paddingOnly(bottom: 10);
                                    }),
                              )
                            ],
                          ).pOnly(right: 20, left: 20),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 500),
                    child: Container(
                      height: 8.h,
                      width: MediaQuery.of(context).size.width,
                      color: whiteclr,
                      child: Row(
                        children: [
                          Container(
                            height: 5.h,
                            width: 18.h,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors
                                    .red, //                   <--- border color
                                width: 1.0,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  "assets/icons/message1.png",
                                  scale: 4,
                                ),
                                Text(
                                  "CHAT",
                                  style: TextStyle(color: Colors.red),
                                ),
                                Text(
                                  "₹30/min",
                                  style: TextStyle(color: Colors.red),
                                ),
                              ],
                            ).pOnly(right: 10, left: 10),
                          ),
                          Spacer(),
                          Container(
                            height: 5.h,
                            width: 18.h,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors
                                    .red, //                   <--- border color
                                width: 1.0,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  "assets/icons/phone.png",
                                  scale: 4,
                                ),
                                Text(
                                  "CALL ",
                                  style: TextStyle(color: Colors.red),
                                ),
                                Text(
                                  "₹30/min",
                                  style: TextStyle(color: Colors.red),
                                ),
                              ],
                            ).pOnly(right: 10, left: 10),
                          ),
                        ],
                      ).pOnly(right: 10, left: 10),
                    ),
                  ),
                  Container(
                    height: 10.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      border: Border.all(
                        color: greytxt,
                        width: 1, //                   <--- border width here
                      ),
                    ),
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Conultation fees",
                              style: txtGrey,
                            ),
                            Row(
                              children: [
                                Text(
                                  "₹33/min",
                                  style: TextStyle(
                                      color: Colors.red,
                                      decoration: TextDecoration.lineThrough),
                                ),
                                3.w.widthBox,
                                Text(
                                  "₹30/min",
                                  style: txtblackNormal,
                                )
                              ],
                            ).pOnly(left: 10),
                          ],
                        ),
                        6.w.widthBox,
                        VerticalDivider(
                          thickness: 1,
                          color: greyClr,
                        ),
                        6.w.widthBox,
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Mins of consultation",
                              style: txtGrey,
                            ),
                            Text(
                              "665644 mins",
                              style: txtblackNormal,
                            )
                          ],
                        ),
                      ],
                    ).pOnly(top: 15, bottom: 15),
                  ).paddingOnly(right: 20, left: 20),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
