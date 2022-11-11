import 'package:flutter/material.dart';

class review extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(scrollDirection: Axis.vertical, children: [
      Column(children: [ReviewTabCardInfo()])
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Baral',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      'Baral',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      'Baral',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    // Row(
                    //   children: [
                    //     Icon(Icons.star),
                    //     Icon(Icons.star),
                    //     Icon(Icons.star),
                    //     Icon(Icons.star),
                    //     Icon(Icons.star),
                    //   ],
                    // ),
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: Text(
                    "hffhcjasdfghjasdfghjsdfghjsdfghjdfghn jfghjhszdhgftxfchgvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ))
      ],
    );
  }
}
