import 'package:flutter/material.dart';
import 'package:stylish_sathi/main.dart';

import 'Component/ServicesList.dart';
import 'Component/TopSuggestionChildElement.dart';
import 'SecondPage.dart';
import 'Section/FirstpageSection.dart';

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(children: [
        Stack(
          children: [
            Image(
              image: AssetImage('images/Ellipse.png'),
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Image(
                        image: AssetImage('images/name.png'),
                      ),
                      Text(
                        "Slogan Here",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SearchBar_Section(),
              SizedBox(
                height: 10,
              ),
              ServicesList_Section(
                Elements: [
                  Services_list(
                    Service_Name: "Hair",
                    PhotoWidget: Image(
                      image: AssetImage('images/name.png'),
                    ),
                  ),
                  Services_list(
                    Service_Name: "Hair",
                    PhotoWidget: Image(
                      image: AssetImage('images/name.png'),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Recommended_Text_Section(),
              TopSuggestion_Section(
                Elements: [
                  list_children_Elements(
                    MainText: "The Next Level",
                    SecondatText: "The Next Level",
                    PhotoAddress: Image(
                      image: AssetImage('images/name.png'),
                    ),
                    OnTAp: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (builder) => storepage()));
                    },
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "Near By",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
              TopSuggestion_Section(
                Elements: [
                  list_children_Elements(
                    MainText: "The Next Level",
                    SecondatText: "The Next Level",
                    PhotoAddress: Image(
                      image: AssetImage('images/name.png'),
                    ),
                    OnTAp: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (builder) => storepage()));
                    },
                  ),
                ],
              ),
            ]),
          ],
        ),
      ]),
    );
  }
}
