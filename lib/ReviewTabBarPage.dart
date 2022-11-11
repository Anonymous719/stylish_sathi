import 'package:flutter/material.dart';

import 'Constant/colors.dart';

class review extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(scrollDirection: Axis.vertical, children: [
      Column(children: [ReviewTabCardInfo(),ReviewTabCardInfo()])
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
    return Row(
      children: [
        Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'John Doe',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(width: 140),
                    Row(
                      children: [
                        Icon(Icons.star,color: IconColor,),
                        Icon(Icons.star,color: IconColor,),
                        Icon(Icons.star,color: IconColor,),
                        Icon(Icons.star,color: IconColor,),
                        Icon(Icons.star,color: IconColor,),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.85,
                  height: 20,
                  child: Text(
                    "The review goes here",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),

              ],
            )),
      ],
    );
  }
}
