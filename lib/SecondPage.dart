import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'Section/SecondpageSection.dart';

class storepage extends StatefulWidget {
  storepage({Key? key}) : super(key: key);

  @override
  State<storepage> createState() => _storepageState();
}

class _storepageState extends State<storepage> with TickerProviderStateMixin {
  final bottomoptions = <Widget>[
    Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              //color: Colors.orange,
              ),
          child: Container(
            child: Image(
              image: AssetImage('images/name.png'),
            ),
          ),
        ),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: ListView(children: [
            Column(
              children: [
                PhotoSlider_Section(bottomoptions: bottomoptions),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ServiceName_Section(
                        ServiceName: "The Next Level",
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Address_Section(
                        Address: "Pulchowk, Lalitpur",
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      OpeningTime_Section(),
                      SizedBox(
                        height: 7,
                      ),
                      ShowMap_Section(
                        OnTap: () {},
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TabBarHeading_Section(tabController: tabController),
                      TabBarbody_Section(tabController: tabController)
                    ],
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
