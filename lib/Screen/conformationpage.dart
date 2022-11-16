import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Constant/colors.dart';
import '../Constant/font.dart';

class conformationPage extends StatelessWidget {
  const conformationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            backgroundColor: kAppBarColor,
            leading: Icon(Icons.arrow_back),
            title: Text(
              "Review And Confirm",
              style: kPopins_500.copyWith(fontSize: 30, color: Colors.white),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  detailBox(),
                  discountCupon(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class detailBox extends StatelessWidget {
  const detailBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      dayTime(),
      SizedBox(
        height: 17,
      ),
      saloonDetail(),
      servicesBooked(),
      servicesBooked(),
      servicesBooked(),
      totalBooked(),
    ]);
  }
}

class dayTime extends StatelessWidget {
  const dayTime({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Align(
        alignment: Alignment.topLeft,
        child: Text("14 NOV 2022 at 9:30 am",
            style: kPopins_500.copyWith(fontSize: 20, color: Colors.black)),
      ),
      Align(
        alignment: Alignment.topLeft,
        child: Text("45 min duration ends at 10:15 am",
            style: kPopins_500.copyWith(fontSize: 12, color: borderColor)),
      )
    ]);
  }
}

class saloonDetail extends StatelessWidget {
  const saloonDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text("The Next Level",
              style: kPopins_500.copyWith(fontSize: 20, color: Colors.black)),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Text("Address",
              style: kPopins_500.copyWith(fontSize: 12, color: borderColor)),
        )
      ],
    );
  }
}

class servicesBooked extends StatelessWidget {
  const servicesBooked({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child:Text("Mens Regular Haircut",
                  style: kPopins_500.copyWith(fontSize: 16, color: serviceBooked)),

            ),
            Spacer(),
            Align(
              alignment: Alignment.topRight,
              child: Text("NRS 900",
                  style: kPopins_500.copyWith(fontSize: 16, color: serviceBooked)),
            ),
          ],
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Text("45 min with Harry",
              style: kPopins_500.copyWith(fontSize: 12, color: serviceSub)),
        )
      ]
    );
  }
}

class totalBooked extends StatelessWidget {
  const totalBooked({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Row(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child:Text("Total",
                    style: kPopins_500.copyWith(fontSize: 18, color: serviceBooked)),

              ),
              Spacer(),
              Align(
                alignment: Alignment.topRight,
                child: Text("NRS 2700",
                    style: kPopins_500.copyWith(fontSize: 18, color: serviceBooked)),
              ),
            ],
          ),
        ]
    );
  }
}

class discountCupon extends StatelessWidget {
  const discountCupon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [],
    );
  }
}




