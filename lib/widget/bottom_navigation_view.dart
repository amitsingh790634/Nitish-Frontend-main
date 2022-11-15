// import 'package:astro_app/utils/packag.dart';
// import 'package:astro_app/widget/appbar.dart';

// class BottomNavScreen extends StatefulWidget {
//   const BottomNavScreen({Key? key}) : super(key: key);

//   @override
//   State<BottomNavScreen> createState() => _BottomNavScreenState();
// }

// class _BottomNavScreenState extends State<BottomNavScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: MyAppbar(title: '',),
//       bottomNavigationBar: ,
//     );
//   }
// }

import 'package:astro_app/module/Refer%20And%20Earn/refer_earn.dart';
import 'package:astro_app/utils/packag.dart';
import 'package:astro_app/utils/styles.dart';

import '../module/Free Insights/free_insights.dart';
import '../module/Live/live_session.dart';

class MyNavBar extends StatefulWidget {
  MyNavBar({Key? key}) : super(key: key);
  int currentIndex = 0;

  @override
  State<MyNavBar> createState() => _MyNavBarState();
}

class _MyNavBarState extends State<MyNavBar> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {
              setState(() {
                pageIndex = 0;
              });
            },
            color: btnorange,
            disabledColor: greyClr,
            icon: pageIndex == 0
                ? Image.asset('assets/icons/home.png')
                : Image.asset('assets/icons/home_filled.png'),
            enableFeedback: true,
          ),
          IconButton(
            onPressed: () {
              setState(() {
                pageIndex = 1;
                Get.to(() =>LiveSessionScreen());
              });
            },
            color: btnorange,
            disabledColor: greyClr,
            icon: pageIndex == 1
                ? Image.asset('assets/icons/live.png')
                : Image.asset('assets/icons/live_filled.png'),
            enableFeedback: true,
          ),
          IconButton(
            onPressed: () {
              setState(() {
                pageIndex = 2;
                Get.to(() =>FreeInsightsScreen());
              });
            },
            color: btnorange,
            disabledColor: greyClr,
            icon: pageIndex == 2
                ? Image.asset('assets/icons/bulb.png')
                : Image.asset('assets/icons/bulb_filled.png'),
            enableFeedback: true,
          ),
          IconButton(
            onPressed: () {
              setState(() {
                pageIndex = 3;
                Get.to(() =>const ReferEarnScreen());
              });
            },
            color: btnorange,
            disabledColor: greyClr,
            icon: pageIndex == 3
                ? Image.asset('assets/icons/refer.png')
                : Image.asset('assets/icons/refer_filled.png'),
            enableFeedback: true,
          ),
        ],
      ),
    );
  }
}


// _onTap({required int index}) {
//   currentIndex = index;
// }

// Container myNavBar(BuildContext context) {
  
// }

// BottomNavigationBar mynavigationBar(BuildContext context) {

//   void  pager =  ;

//   IconThemeData selectedicon = IconThemeData(color: btnorange, size: 24);
//   IconThemeData unselectedicon = IconThemeData(color: greyClr, size: 20);

//   return BottomNavigationBar(
//     // backgroundColor: ,
//     selectedIconTheme: selectedicon,
//     unselectedIconTheme: unselectedicon,
//     onTap: pager,
//     // onTap: ,
//     items: const [
//       BottomNavigationBarItem(
//           icon: ImageIcon(
//             AssetImage('assets/icons/home.png'),
//           ),
//           label: 'Home'),
//       BottomNavigationBarItem(
//           icon: ImageIcon(
//             AssetImage('assets/icons/live.png'),
//           ),
//           label: 'Insta Live'),
//       BottomNavigationBarItem(
//         icon: ImageIcon(
//           AssetImage('assets/icons/bulb.png'),
//         ),
//         label: 'Free Insights',
//       ),
//       BottomNavigationBarItem(
//           icon: ImageIcon(
//             AssetImage('assets/icons/refer.png'),
//           ),
//           label: 'Refer & Earn'),
//     ],
//   );
// }
