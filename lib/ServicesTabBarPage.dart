import 'package:flutter/material.dart';
import 'package:stylish_sathi/Constant/font.dart';
import 'package:stylish_sathi/Screen/SelectStylist.dart';

import 'Constant/colors.dart';

class services extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.add),
        label: Text(
          "Book Now",
          style: kNumans_400,
        ),
        backgroundColor: kIconColor,
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (builder) => SelectStylist()));
        },
      ),
      body: Container(
          child: ListView(scrollDirection: Axis.vertical, children: [
        ServiceTabCardInfo(
          ServiceName: "Men Haircut",
          Feature: ["1Hr", 'Mens Only'],
        ),
        ServiceTabCardInfo(
          ServiceName: "Men Haircut",
          Feature: ["1Hr", 'Mens Only'],
        ),
        ServiceTabCardInfo(
          ServiceName: "Men Haircut",
          Feature: ["1Hr", 'Mens Only'],
        ),
        ServiceTabCardInfo(
          ServiceName: "Men Haircut",
          Feature: ["1Hr", 'Mens Only'],
        ),
        ServiceTabCardInfo(
          ServiceName: "Men Haircut",
          Feature: ["1Hr", 'Mens Only'],
        ),
        ServiceTabCardInfo(
          ServiceName: "Men Haircut",
          Feature: ["1Hr", 'Mens Only'],
        ),
        SizedBox(
          height: 35,
        )
      ])),
    );
  }
}

class ServiceTabCardInfo extends StatefulWidget {
  final String ServiceName;
  final List<String> Feature;
  ServiceTabCardInfo(
      {super.key, required this.ServiceName, required this.Feature});

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
                    color: isSelected ? kIconColor : Colors.transparent,
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
                        widget.ServiceName,
                        style: kPopins_500.copyWith(fontSize: 17.5),
                      ),
                      Row(children: [
                        for (int i = 0; i < widget.Feature.length; i++)
                          Padding(
                            padding: EdgeInsets.only(top: 10, right: 10),
                            child: Row(
                              children: [
                                Container(
                                  width: 10.0,
                                  height: 10.0,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.black),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  widget.Feature[i],
                                  style: kPopins_400.copyWith(fontSize: 13),
                                ),
                              ],
                            ),
                          ),

                        // Row(
                        //   children: [
                        //     Container(
                        //       width: 10.0,
                        //       height: 10.0,
                        //       decoration: BoxDecoration(
                        //           shape: BoxShape.circle,
                        //           color: Colors.black),
                        //     ),
                        //     Text(
                        //       " Mens only",
                        //       style: kPopins_400.copyWith(fontSize: 13),
                        //     ),
                        //   ],
                        // ),
                      ])
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
