import 'package:carousel_slider/carousel_slider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:stylish_sathi/Constant/colors.dart';

import 'FirstPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: startpage(),
    );
  }
}

class startpage extends StatelessWidget {
  const startpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bottomoptions = <Widget>[
      Icon(Icons.home, size: 30),
      Icon(Icons.pin_drop, size: 30),
      Icon(Icons.calendar_month, size: 30),
      Icon(Icons.shopping_cart, size: 30),
      Icon(Icons.account_circle, size: 30),
    ];
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.white,
      body: homepage(),
      bottomNavigationBar: Theme(
        data: Theme.of(context)
            .copyWith(iconTheme: IconThemeData(color: Colors.white)),
        child: CurvedNavigationBar(
          items: bottomoptions,
          height: 60,
          backgroundColor: Colors.transparent,
          color: IconColor,
        ),
      ),
    );
  }
}
