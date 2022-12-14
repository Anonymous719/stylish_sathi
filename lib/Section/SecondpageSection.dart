import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:stylish_sathi/Constant/colors.dart';
import 'package:stylish_sathi/Constant/font.dart';
import 'package:stylish_sathi/ReviewTabBarPage.dart';
import 'package:stylish_sathi/Screen/SecondPage.dart';

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
        autoPlay: true,
        aspectRatio: 488 / 310,
        viewportFraction: 1,
        enlargeCenterPage: true,
      ),
      items: [
        Image.asset(
          "images/Storephoto.png",
          fit: BoxFit.fill,
          width: double.infinity,
        ),
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
            style: kPopins_600.copyWith(fontSize: 20),
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
                ? Icon(Icons.favorite, size: 25, color: kFavColor)
                : Icon(
                    Icons.favorite_border,
                    size: 25,
                    color: kFavColor,
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
        style: kMontserrat_600.copyWith(fontSize: 12),
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
          color: kIconColor,
        ),
        Text(
          " Open Now: 9:00 am-7:30 pm",
          style: kMontserrat_600.copyWith(fontSize: 15),
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
            color: kIconColor,
          ),
          Text(
            " Show on map",
            style: kMontserrat_600.copyWith(fontSize: 15),
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
        labelStyle: kMontserrat_600,
        controller: tabController,
        labelColor: Colors.black,
        unselectedLabelColor: Colors.grey,
        indicatorColor: kIconColor,
        indicatorWeight: 5,
        indicatorPadding: EdgeInsets.fromLTRB(0, 0, 0, 5),
        tabs: [
          Tab(
            text: "Services",
          ),
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
      height: 350,
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
