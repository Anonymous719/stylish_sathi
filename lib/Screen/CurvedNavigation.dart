import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:stylish_sathi/Constant/colors.dart';
import 'package:stylish_sathi/Screen/CartPage.dart';
import 'package:stylish_sathi/Screen/LocationPage.dart';
import 'package:stylish_sathi/Screen/ProfilePage.dart';

import 'CalenderPage.dart';
import 'FirstPage.dart';
import 'SelectStylist.dart';

class CurvedNavigationPage extends StatefulWidget {
  @override
  State<CurvedNavigationPage> createState() => _CurvedNavigationPageState();
}

class _CurvedNavigationPageState extends State<CurvedNavigationPage> {
  final screen = [
    FirstPage(),
    LocationPage(),
    CalenderPage(),
    CartPage(),
    ProfilePage(),
  ];
  int _page = 0;

  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: CurvedNavigationBar(
        height: 60,
        color: kAppBarColor,
        buttonBackgroundColor: Colors.amberAccent,
        key: _bottomNavigationKey,
        backgroundColor: Colors.transparent,
        items: <Widget>[
          Icon(
            Icons.home,
            size: 24,
          ),
          Icon(
            Icons.add_location_alt_rounded,
            size: 24,
          ),
          Icon(
            Icons.calendar_month,
            size: 24,
          ),
          Icon(
            Icons.shopping_cart,
            size: 24,
          ), //24,),

          Icon(
            Icons.person,
            size: 24,
          ) //24,),
        ],
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
      ),
      body: screen[_page],
    );
  }
}
