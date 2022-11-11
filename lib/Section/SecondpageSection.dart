import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:stylish_sathi/ReviewTabBarPage.dart';

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
        items: bottomoptions,
        options: CarouselOptions(
          height: 200,
          aspectRatio: 16 / 9,
          viewportFraction: 0.8,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 1000),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          scrollDirection: Axis.horizontal,
        ));
  }
}

class ServiceName_Section extends StatelessWidget {
  final String ServiceName;

  const ServiceName_Section({required this.ServiceName});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            ServiceName,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),
        Spacer(),
        Align(
          alignment: Alignment.topRight,
          child: Icon(
            Icons.favorite,
            size: 25,
            color: Colors.red,
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
          color: Colors.orange,
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
            color: Colors.orange,
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
        indicatorColor: Colors.orange,
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
          Text("sdvscsdc"),

          //about,
        ],
      ),
    );
  }
}
