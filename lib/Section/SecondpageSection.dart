import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:stylish_sathi/Constant/colors.dart';
import 'package:stylish_sathi/ReviewTabBarPage.dart';
import 'package:stylish_sathi/SecondPage.dart';

import '../ServicesTabBarPage.dart';

class PhotoSlider_Section extends StatelessWidget {
  const PhotoSlider_Section({
    Key? key,
    required this.bottomoptions,
  }) : super(key: key);

  final List<Widget> bottomoptions;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        aspectRatio:488/310,
        viewportFraction: 1,
        enlargeCenterPage: true,
      ), items: [
        Image.asset("images/Storephoto.png",fit: BoxFit.fill,width: double.infinity,),
    ],
    );
  }
}

class ServiceName_Section extends StatefulWidget {
  final String ServiceName;

  ServiceName_Section({
    required this.ServiceName,
  });

  @override
  State<ServiceName_Section> createState() => _ServiceName_SectionState();
}

class _ServiceName_SectionState extends State<ServiceName_Section> {
  bool isFav = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            widget.ServiceName,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),
        Spacer(),
        Align(
          alignment: Alignment.topRight,
          child: GestureDetector(
            onTap: () {
              isFav = !isFav;
              print("pressed");
              setState(() {});
            },
            child: isFav
                ? Icon(Icons.favorite, size: 25, color: FavColor)
                : Icon(
                    Icons.favorite_border,
                    size: 25,
                    color: FavColor,
                  ),
          ),
        ),
      ],
    );
  }
}

class Address_Section extends StatelessWidget {
  final String Address;

  const Address_Section({super.key, required this.Address});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Text(
        Address,
        style: TextStyle(fontSize: 17),
      ),
    );
  }
}

class OpeningTime_Section extends StatelessWidget {
  const OpeningTime_Section({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.timer,
          size: 20,
          color: IconColor,
        ),
        Text(
          " Open Now: 9:00 am-7:30 pm",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        )
      ],
    );
  }
}

class ShowMap_Section extends StatelessWidget {
  final Function() OnTap;

  const ShowMap_Section({required this.OnTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: OnTap,
      child: Row(
        children: [
          Icon(
            Icons.near_me,
            size: 20,
            color: IconColor,
          ),
          Text(
            " Show on map",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          )
        ],
      ),
    );
  }
}

class TabBarHeading_Section extends StatelessWidget {
  const TabBarHeading_Section({
    Key? key,
    required this.tabController,
  }) : super(key: key);

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(
        controller: tabController,
        labelColor: Colors.black,
        unselectedLabelColor: Colors.grey,
        indicatorColor: IconColor,
        indicatorWeight: 5,
        indicatorPadding: EdgeInsets.fromLTRB(0, 0, 0, 5),
        tabs: [
          Tab(text: "Services"),
          Tab(text: "Reviews"),
          Tab(text: "About us")
        ],
      ),
    );
  }
}

class TabBarbody_Section extends StatelessWidget {
  const TabBarbody_Section({
    Key? key,
    required this.tabController,
  }) : super(key: key);

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 500,
      child: TabBarView(
        controller: tabController,
        children: [
          services(),
          review(),
          Text("About us"),

          //about,
        ],
      ),
    );
  }
}
