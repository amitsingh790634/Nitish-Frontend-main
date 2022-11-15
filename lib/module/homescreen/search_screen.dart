import 'package:astro_app/controller/search_control.dart';
import 'package:astro_app/module/Details/details.dart';
import 'package:astro_app/server/api_client.dart';
import 'package:astro_app/utils/packag.dart';
import 'package:astro_app/utils/styles.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  SearchController _controller = Get.put(SearchController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: appbg,
        centerTitle: true, 
        title: Image.asset('assets/icons/logo.png').objectCenterLeft(), 
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            1.h.heightBox,
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
                                
                              },
                              child: const Text('View All')),
                          filled: false))
                  .pOnly(left: 0),
            ).centered(),
          ),
         2.h.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Result',
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  ' ',
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade500,
                  ),
                )
              ],
            ).paddingSymmetric(horizontal: 5.w),
            2.h.heightBox,
            _controller.obx(
              (state) => Container(
                height: 73.h,
                width: 100.w,
                color: Colors.white,
                // ignore: unnecessary_null_comparison
                child: _controller.isLoading.value == null 
                    ? const Text(
                        "No result found!",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      )
                    : ListView.builder(
                        itemCount: state!.length,
                        shrinkWrap: true,
                        controller: _controller.scrollController,
                        itemBuilder: (BuildContext, index) {
                         return Card(
                            child: InkWell(
                              onTap: () {
                                Get.to(() => DetailsScreen(),
                                    arguments: state[index].id);
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
                                                state[index]
                                                    .userImages
                                                    .toString(),
                                            fit: BoxFit.fill,
                                            errorBuilder: (context, error,
                                                    stackTrace) =>
                                                Image.asset(
                                                    'assets/images/profile.png',
                                                    fit: BoxFit.fill),
                                          ),
                                        ),
                                        15.heightBox,
                                        Container(
                                          width: 65,
                                          height: 26,
                                          decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10)),
                                            color: yellow,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                                  fontSize: 14,
                                                  color: Colors.black),
                                            ),
                                            5.widthBox,
                                            const Text(
                                              '₹ 30/min',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.red,
                                                  decoration: TextDecoration
                                                      .lineThrough),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ).pOnly(top: 15),
                                    40.widthBox,
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        40.heightBox,
                                        Row(children: [
                                          Image.asset(
                                              'assets/icons/message.png'),
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
                          );
                        },
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
