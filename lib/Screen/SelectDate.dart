import 'package:flutter/material.dart';

import '../Constant/colors.dart';
import '../Constant/font.dart';
import 'conformationpage.dart';

class SelectDatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            backgroundColor: kAppBarColor,
            leading: Icon(Icons.arrow_back),
            title: Text(
              "Select Date",
              style: kPopins_500.copyWith(fontSize: 30, color: Colors.white),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text("Month",
                        style: kPopins_500.copyWith(
                            fontSize: 16, color: Colors.black)),
                  ),
                  SizedBox(
                    height: 21,
                  ),
                  scrollDate(),
                  Divider(
                    thickness: 1,
                    color: Color(0xffD1D1D1),
                  ),
                  Listtilefordate(
                    time: "6pm",
                    OnTap:() {
                      Navigator.push(context, MaterialPageRoute(builder: ((context) => conformationPage())));
                    }
                  ),
                  
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Listtilefordate extends StatelessWidget {
  final String time;
  final Function() OnTap;

  Listtilefordate({super.key, required this.time, required this.OnTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
           trailing:
              Transform.rotate(angle: 135, child: Icon(Icons.arrow_back_ios)),
          onTap: OnTap,
          title: Text(
            time,
            style: kMontserrat_600,
          ),
        ),
        Divider(
          thickness: 1,
          color: Color(0xffD1D1D1),
        ),
      ],
    );
  }
}

class scrollDate extends StatelessWidget {
  const scrollDate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          dateBox(Day: "Sunday", date: 1),
          dateBox(Day: "Sunday", date: 1),
          dateBox(Day: "Sunday", date: 1),
          dateBox(Day: "Sunday", date: 1),
          dateBox(Day: "Sunday", date: 1),
          dateBox(Day: "Sunday", date: 1),
          dateBox(Day: "Sunday", date: 1),
        ],
      ),
    );
  }
}

class dateBox extends StatelessWidget {
  final String Day;
  final int date;

  const dateBox({super.key, required this.Day, required this.date});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8.0),
      child: Container(
        width: 64,
        height: 56,
        decoration: BoxDecoration(
            border: Border.all(color: borderColor),
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Text(Day,
                style: kPopins_500.copyWith(fontSize: 12, color: Colors.black)),
            Text(date.toString(),
                style: kPopins_500.copyWith(fontSize: 16, color: Colors.black))
          ],
        ),
      ),
    );
  }
}
