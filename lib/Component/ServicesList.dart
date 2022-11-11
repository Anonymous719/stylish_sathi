import 'package:flutter/material.dart';

class Services_list extends StatelessWidget {
  final String Service_Name;
  final Widget PhotoWidget;

  const Services_list({required this.PhotoWidget, required this.Service_Name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          decoration:
              BoxDecoration(color: Colors.orange, shape: BoxShape.circle),
          child: SizedBox(width: 90, height: 90, child: PhotoWidget),
        ),
        Text(
          Service_Name,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        )
      ],
    );
  }
}
