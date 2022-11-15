
import 'package:astro_app/module/Free%20Insights/free_insights.dart';
import 'package:astro_app/module/Live/live_session.dart';
import 'package:astro_app/module/Refer%20And%20Earn/refer_earn.dart';
import 'package:astro_app/module/homescreen/home_view.dart';
import 'package:astro_app/utils/styles.dart';
import 'package:flutter/material.dart';

class NavBarIndex extends StatefulWidget {
  final int index;

  const NavBarIndex(this.index, {super.key});

  @override
  State<NavBarIndex> createState() => _NavBarIndexState(index);
}

class _NavBarIndexState extends State<NavBarIndex> {
  int? _currentIndex;
  final int index;

  _NavBarIndexState(this.index);

  int _currentPage = 0;
  var isProfilePage = true;

  @override
  void initState() {
    super.initState();
    _currentPage = index;
  }

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  List<Widget> navigationPage = [
      HomeScreen(),
      LiveSessionScreen(),
      FreeInsightsScreen(),
      ReferEarnScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationPage.elementAt(_currentPage),
      bottomNavigationBar: _myBottombar(),
    );
  }

  _myBottombar() {
    return BottomNavigationBar(
        elevation: 2,
        type: BottomNavigationBarType.fixed,
        backgroundColor: whiteclr,
        selectedItemColor: btnorange,
        unselectedItemColor: const Color(0xff898886),
        selectedFontSize: 12,
        unselectedFontSize: 12,
        onTap: (int num) {
          _currentPage = num;
          setState(() {
            isProfilePage = _currentPage == 0 ? true : false;
          });
        },
        showSelectedLabels: true,
        currentIndex: _currentPage,

        items: const [ 
          BottomNavigationBarItem(
             icon: ImageIcon(AssetImage("assets/icons/home_filled.png"),
             ),
             label: " "
          ),

          BottomNavigationBarItem(
             icon: ImageIcon(AssetImage("assets/icons/live_filled.png"), 
             ),
             label: " "
          ),

          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/icons/bulb_filled.png"), 
             ),
             label: " "
          ),
          BottomNavigationBarItem(
             icon: ImageIcon(AssetImage("assets/icons/refer_filled.png"), 
             ), 
             label: " "
          ),
           
        ]
        );
  }
}