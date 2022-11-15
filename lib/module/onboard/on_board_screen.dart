import 'package:astro_app/module/user/login_screen.dart';
import 'package:astro_app/utils/packag.dart';
import 'package:astro_app/utils/styles.dart';

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({super.key});

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  PageController controller = PageController();

  final List<Widget> _imgList = <Widget>[
    Image.asset(
      'assets/images/img1.png',
      width: 40.w,
    ),
    Image.asset(
      'assets/images/img2.png',
      width: 70.w,
    ),
    Image.asset(
      'assets/images/img3.png',
      width: 70.w,
    ),
  ];

  int _curr = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(children: [
        Column(
          children: [
            SizedBox(
              height: 1.h,
            ),
            Image.asset('assets/images/logo.png',
                height: 10.h, fit: BoxFit.fill),
            SizedBox(
              height: 2.h,
            ),
            Text(
              "Consult India’s Best Astrologers",
              style: txtblackNormal,
            ),
            SizedBox(
              height: 2.h,
            ),
            Expanded(
                child: PageView(
              children: _imgList,
              scrollDirection: Axis.horizontal,
              controller: controller,
              onPageChanged: (num) {
                setState(() {
                  _curr = num;
                });
              },
            ))
          ],
        ),
        Positioned(
            child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: double.infinity,
            height: 33.h,
            padding: EdgeInsets.fromLTRB(20, 10, 15, 0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: whiteclr,
                border: Border.all(color: Color(0xffDDDCDC)),
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(5.0, 5.0),
                    color: greyClr,
                  )
                ]),
            child: Column(
              children: [
                SizedBox(
                  height: 2.h,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => LoginScreen());
                  },
                  child: Image.asset(
                    'assets/images/cnp.png',
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Image.asset(
                    'assets/images/cng.png',
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Image.asset(
                    'assets/images/cnf.png',
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text.rich(TextSpan(
                    text: 'By continuing you agree to our ',
                    style: txtSmallBlack,
                    children: [
                      const TextSpan(
                        text: 'Terms of use ',
                        style: TextStyle(
                            color: btnorange,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Roboto'),
                      ),
                      TextSpan(
                        text: ' & ',
                        style: txtSmallBlack,
                      ),
                      const TextSpan(
                        text: ' privacy policy',
                        style: TextStyle(
                            color: btnorange,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Roboto'),
                      ),
                    ]))
              ],
            ),
          ),
        ))
      ])),
    );
  }
}
