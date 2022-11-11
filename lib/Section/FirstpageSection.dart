import 'package:flutter/material.dart';
import 'package:stylish_sathi/Constant/font.dart';

import '../Component/ServicesList.dart';

class SearchBar_Section extends StatelessWidget {
  const SearchBar_Section({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
        height: 50,
        child: TextFormField(
          style: kNumans_400,
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search),
            labelText: 'Search Your Grooming Parter...',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(70)),
          ),
        ),
      ),
    );
  }
}

class ServicesList_Section extends StatelessWidget {
  final List<Widget> Elements;

  const ServicesList_Section({super.key, required this.Elements});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView(
          //padding: EdgeInsets.all(15),
          scrollDirection: Axis.horizontal,
          children: Elements),
    );
  }
}

class Recommended_Text_Section extends StatelessWidget {
  const Recommended_Text_Section({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Text(
        "Recommended",
        style: kMontserrat_600.copyWith(fontSize: 25),
      ),
    );
  }
}

class TopSuggestion_Section extends StatelessWidget {
  final List<Widget> Elements;

  const TopSuggestion_Section({super.key, required this.Elements});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView(
        //padding: EdgeInsets.all(15),
        scrollDirection: Axis.horizontal,
        children: Elements,
      ),
    );
  }
}
