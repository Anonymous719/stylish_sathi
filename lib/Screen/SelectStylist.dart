import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:stylish_sathi/Constant/colors.dart';
import 'package:stylish_sathi/Constant/font.dart';
import 'package:stylish_sathi/Screen/SelectDate.dart';

class SelectStylist extends StatelessWidget {
  const SelectStylist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            backgroundColor: kAppBarColor,
            leading: Icon(Icons.arrow_back),
            title: Text(
              "Select Stylist",
              style: kPopins_500.copyWith(fontSize: 30, color: Colors.white),
            ),
          ),
          SliverToBoxAdapter(
              child: Column(
            children: [
              TileStylist(
                OnTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => SelectDatePage()));
                },
                initial: "NP",
                title: "No Preferance",
                subtitle: "Anyone Who is availabe",
              ),
              TileStylist(
                OnTap: () {},
                initial: "NP",
                title: "No Preferance",
                subtitle: "Anyone Who is availabe",
              ),
              TileStylist(
                OnTap: () {},
                initial: "NP",
                title: "No Preferance",
                subtitle: "Anyone Who is availabe",
              ),
              TileStylist(
                OnTap: () {},
                initial: "NP",
                title: "No Preferance",
                subtitle: "Anyone Who is availabe",
              ),
              TileStylist(
                OnTap: () {},
                initial: "NP",
                title: "No Preferance",
                subtitle: "Anyone Who is availabe",
              ),
              TileStylist(
                OnTap: () {},
                initial: "NP",
                title: "No Preferance",
                subtitle: "Anyone Who is availabe",
              ),
              TileStylist(
                OnTap: () {},
                initial: "NP",
                title: "No Preferance",
                subtitle: "Anyone Who is availabe",
              ),
              TileStylist(
                OnTap: () {},
                initial: "NP",
                title: "No Preferance",
                subtitle: "Anyone Who is availabe",
              ),
              TileStylist(
                OnTap: () {},
                initial: "NP",
                title: "No Preferance",
                subtitle: "Anyone Who is availabe",
              ),
              SizedBox(
                height: 60,
              )
            ],
          )),
        ],
      ),
    );
  }
}

class TileStylist extends StatelessWidget {
  final String initial, title, subtitle;
  final Function() OnTap;

  TileStylist(
      {super.key,
      required this.initial,
      required this.title,
      required this.subtitle,
      required this.OnTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          trailing:
              Transform.rotate(angle: 135, child: Icon(Icons.arrow_back_ios)),
          onTap: OnTap,
          leading: CircleAvatar(
            backgroundColor: Color(0xffD9D9D9),
            child: Center(
              child: Text(
                initial,
                style: kMontserrat_600,
              ),
            ),
          ),
          title: Text(
            title,
            style: kMontserrat_600,
          ),
          subtitle: Text(
            subtitle,
            style: kMontserrat_400,
          ),
        ),
        Divider(
          thickness: 1,
          color: Color(0xffD1D1D1),
        )
      ],
    );
  }
}
