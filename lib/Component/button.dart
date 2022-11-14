import 'package:flutter/material.dart';

import '../Constant/colors.dart';
import '../Constant/font.dart';

class Button extends StatelessWidget {
  final String Textt;
  final Function() OnTap;

  const Button({super.key, required this.Textt, required this.OnTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: OnTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          color: kButtonColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              offset: const Offset(10.0, 5.0),
              blurRadius: 10.0,
              spreadRadius: 2.0,
            )
          ],
        ),
        height: 60, //60,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Text(
            Textt,
            style: kPopins_600.copyWith(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
