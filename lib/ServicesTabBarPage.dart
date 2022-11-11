import 'package:flutter/material.dart';
import 'package:stylish_sathi/Constant/font.dart';

import 'Constant/colors.dart';

class services extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(scrollDirection: Axis.vertical, children: [
      Column(children: [ServiceTabCardInfo()])
    ]));
  }
}

class ServiceTabCardInfo extends StatefulWidget {
  const ServiceTabCardInfo({super.key});

  @override
  State<ServiceTabCardInfo> createState() => _ServiceTabCardInfoState();
}

class _ServiceTabCardInfoState extends State<ServiceTabCardInfo> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        setState(() => isSelected = !isSelected);
      },
      child: Column(
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: isSelected ? IconColor : Colors.transparent,
                    borderRadius: BorderRadius.circular(15),
                    border: isSelected
                        ? null
                        : Border.all(
                            color: Colors.grey,
                            width: 2,
                          )),
                width: 30,
                height: 30,
                child: isSelected
                    ? Icon(
                        Icons.check,
                        color: Colors.white,
                      )
                    : null,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Men Haircut",
                        style: kPopins_500.copyWith(fontSize: 17.5),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Row(children: [
                          Row(
                            children: [
                              Container(
                                width: 10.0,
                                height: 10.0,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.black),
                              ),
                              Text(
                                " 1hr",
                                style: kPopins_400.copyWith(fontSize: 13),
                              ),
                            ],
                          ),
                          SizedBox(width: 10),
                          Row(
                            children: [
                              Container(
                                width: 10.0,
                                height: 10.0,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.black),
                              ),
                              Text(
                                " Mens only",
                                style: kPopins_400.copyWith(fontSize: 13),
                              ),
                            ],
                          ),
                        ]),
                      )
                    ]),
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Select Stylist",
                    style: kPopins_600.copyWith(fontSize: 15),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      "NRS:0",
                      style: kPopins_600.copyWith(fontSize: 15),
                    ),
                  ),
                ],
              )
            ],
          ),
          Divider(
            thickness: 1,
            color: Color(0xffD1D1D1),
          )
        ],
      ),
    );
  }
}
