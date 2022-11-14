import 'package:flutter/material.dart';
import 'package:stylish_sathi/Constant/font.dart';

import 'Constant/colors.dart';

class review extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(scrollDirection: Axis.vertical, children: [
      Column(children: [ReviewTabCardInfo(), ReviewTabCardInfo()])
    ]));
  }
}

class ReviewTabCardInfo extends StatefulWidget {
  const ReviewTabCardInfo({super.key});

  @override
  State<ReviewTabCardInfo> createState() => _ReviewTabCardInfoState();
}

class _ReviewTabCardInfoState extends State<ReviewTabCardInfo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'John Doe',
                  style: kPopins_600.copyWith(fontSize: 17.5),
                ),
                Spacer(),
                Row(
                  children: [
                    Icon(
                      size: 17.5,
                      Icons.star,
                      color: kIconColor,
                    ),
                    Icon(
                      size: 17.5,
                      Icons.star,
                      color: kIconColor,
                    ),
                    Icon(
                      size: 17.5,
                      Icons.star,
                      color: kIconColor,
                    ),
                    Icon(
                      size: 17.5,
                      Icons.star,
                      color: kIconColor,
                    ),
                    Icon(
                      size: 17.5,
                      Icons.star,
                      color: kIconColor,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.85,
              height: 20,
              child: Text(
                "The review goes here",
                style: kMontserrat_400.copyWith(fontSize: 15),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ));
  }
}
