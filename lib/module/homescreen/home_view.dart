import 'package:astro_app/controller/banner_controller.dart';
import 'package:astro_app/controller/get_astro_contr.dart';
import 'package:astro_app/module/Details/details.dart';
import 'package:astro_app/module/homescreen/drawer_screen.dart';
import 'package:astro_app/module/homescreen/search_screen.dart';
import 'package:astro_app/server/api_client.dart';
import 'package:astro_app/utils/packag.dart';
import '../../utils/styles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final BannerController _bannerC = Get.put(BannerController());
  final GetAstroController _controller = Get.put(GetAstroController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appbg,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: appbg,
        centerTitle: true,
        // leading: IconButton(
        //   onPressed: () => Get.to(Drawer()),
        //   icon: const Icon(
        //     Icons.menu,
        //     size: 25,
        //     color: blckclr,
        //   ),
        // ),
        title: Image.asset('assets/icons/logo.png').objectCenterLeft(),
        // Text('',
        //     style: const TextStyle(
        //         color: Color(0xff0F0F0F),
        //         fontSize: 16,
        //         fontWeight: FontWeight.w400,
        //         fontFamily: 'Roboto')),
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
          Image.asset('assets/icons/bell.png'),
        ],
        actionsIconTheme: const IconThemeData(color: Colors.blueAccent),
      ),
      drawer: DrawerMenu(),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            width: 100.w,
            height: 80,
            color: greytxt,
            child: Container(
              width: 88.w,
              decoration: const BoxDecoration(
                color: whiteclr,
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search by name, language, category',
                          hintStyle:
                              const TextStyle(color: greytxt, fontSize: 12),
                          prefixIcon: Image.asset('assets/icons/search.png'),
                          fillColor: whiteclr,
                          suffixIcon: ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                ),
                                backgroundColor:
                                    MaterialStateProperty.all(lightgrey),
                                foregroundColor:
                                    MaterialStateProperty.all(greytxt),
                              ),
                              onPressed: () {
                                Get.to(() => SearchScreen());
                              },
                              child: Text('View All')),
                          filled: false))
                  .pOnly(left: 0),
            ).centered(),
          ),
          Image.asset('assets/images/vedic.png', fit: BoxFit.cover),
          2.h.heightBox,

          ///adds
          _bannerC.obx(
            (state) => SizedBox(
              height: 150,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: state!.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return SizedBox(
                    width: 90.w,
                    height: 150,
                    child: Image.network(
                      ApiClient.imgUrl + state[index].bannerImage,
                      fit: BoxFit.fill,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          width: 90.w,
                          height: 150,
                          decoration: BoxDecoration(
                            // boxShadow: [Color.fromARGB(29, 0, 0, 0),],
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            color: yellow.withOpacity(0.65),
                            image: const DecorationImage(
                              image: AssetImage('assets/icons/chakra.png'),
                            ),
                          ),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    width: 70,
                                    height: 30,
                                    decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(30)),
                                      color: yellow,
                                    ),
                                    child: Text(
                                      'Upcoming',
                                      style: txtSmallBlack,
                                    ).centered(),
                                  ),
                                  15.heightBox,
                                  Container(
                                    height: 70,
                                    width: 70,
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(50),
                                        ),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/profile.png'),
                                            fit: BoxFit.fill)),
                                  )

                                  // Image.asset('name')
                                ],
                              ).pOnly(top: 15, left: 10),
                              10.widthBox,
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Love & 2nd Marriage',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromARGB(255, 36, 35, 35)),
                                  ),
                                  5.heightBox,
                                  const Text(
                                    'Hindi & Bengali',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  15.heightBox,
                                  const Text(
                                    '07 Jun, Tue | 08:00 PM',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ],
                              ).pOnly(top: 50),
                              5.widthBox,
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Icon(Icons.share),
                                  Spacer(),
                                  SizedBox(
                                    width: 90,
                                    height: 30,
                                    child: ElevatedButton(
                                        onPressed: () {},
                                        child: Text(
                                          'NOTIFY ME',
                                          style: TextStyle(fontSize: 10),
                                        ),
                                        style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  greenclr),
                                        )),
                                  )
                                ],
                              ).pOnly(top: 10, bottom: 20)
                            ],
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ),
          15.heightBox,

          _controller.obx(
            (state) => SizedBox(
              width: 98.w,
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: state!.length,
                shrinkWrap: true,
                itemBuilder: (context, index) => Card(
                  child: InkWell(
                    onTap: () {
                      Get.to(() => DetailsScreen(), arguments: state[index].id);
                    },
                    child: Container(
                      width: 95.w,
                      height: 150,
                      child: Row(
                        children: [
                          Column(
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
                                  ApiClient.baseImg +
                                      state[index].userImages.toString(),
                                  fit: BoxFit.fill,
                                  errorBuilder: (context, error, stackTrace) =>
                                      Image.asset('assets/images/profile.png',
                                          fit: BoxFit.fill),
                                ),
                              ),
                              15.heightBox,
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
                                      '4.96',
                                      style: txtSmallBlack,
                                    ).pOnly(top: 2),
                                    5.widthBox,
                                    Image.asset(
                                      'assets/icons/star.png',
                                      color: Colors.black,
                                    )
                                  ],
                                ).centered(),
                              ),
                            ],
                          ).pOnly(top: 15, left: 10),
                          10.widthBox,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                state[index].userName,
                                style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: btnorange),
                              ),
                              5.heightBox,
                              Text(
                                state[index].languages,
                                style: const TextStyle(fontSize: 12),
                              ),
                              15.heightBox,
                              Text(
                                "Exp ${state[index].experince}",
                                style: TextStyle(fontSize: 12),
                              ),
                              30.heightBox,
                              Row(
                                children: [
                                  const Text(
                                    '₹ 20/min',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.black),
                                  ),
                                  5.widthBox,
                                  const Text(
                                    '₹ 30/min',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.red,
                                        decoration: TextDecoration.lineThrough),
                                  ),
                                ],
                              ),
                            ],
                          ).pOnly(top: 15),
                          40.widthBox,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              40.heightBox,
                              Row(children: [
                                Image.asset('assets/icons/message.png'),
                                25.widthBox,
                                Image.asset('assets/icons/call.png')
                              ]),
                              5.heightBox,
                              Row(children: [
                                const Text('Chat'),
                                // Image.asset('assets/icons/message.png'),
                                25.widthBox,
                                const Text('Call'),
                                // Image.asset('assets/icons/call.png')
                              ]),
                              15.heightBox,
                              const Text(
                                'Wait time - 2h:8 m',
                                style: TextStyle(color: Colors.red),
                              )
                            ],
                          ).pOnly(top: 10, bottom: 0, right: 8)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      )),
      // bottomNavigationBar: MyNavBar(),
    );
  }
}
