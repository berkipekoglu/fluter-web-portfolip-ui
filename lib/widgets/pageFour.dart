import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color mainColor = Color(0xFF000000);
Color leftTitle = Color(0xFF1238FF);
Color leftText = Color(0xFFEBEBEB);
Color rightMainColor = Color(0xFF1C09FF);
Color rightTitle = Color(0xFF000000);
Color rightText = Color(0xFFEBEBEB);
List<String> names = ["Berk İpekoğlu", "berkipekoglu"];
List<String> skills = [
  "Dart & Flutter",
  "C#",
  "HTML & CSS",
  "SQL",
  "Java",
  "Adobe XD",
  "Figma",
  "Python"
];

List<List<String>> contact = [
  ["Name", "Berk İpekoğlu"],
  ["Github", "berkipekoglu"],
  ["Instagram", "berkipekoglu"],
  ["Twitter", "berkipekoglu"],
];

class PageFour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: mainColor,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.only(left: 68, top: 53),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: 29),
                  child: Text(
                    "Contact",
                    style: GoogleFonts.kronaOne(
                      fontSize: 48,
                      color: leftTitle,
                    ),
                  ),
                ),
                Titles(number: 0),
                Titles(number: 1),
                Titles(number: 2),
                Titles(number: 3),
              ],
            ),
          ),

          // Right side

          Flexible(
            child: Container(
              width: 556.0,
              color: rightMainColor,
              margin: EdgeInsets.only(top: 23, bottom: 68, right: 68),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 33, top: 30, bottom: 48),
                    child: Text(
                      "Skills",
                      style: GoogleFonts.kronaOne(
                        fontSize: 48,
                        color: rightTitle,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Skills(index);
                      },
                      itemCount: skills.length,
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Titles extends StatelessWidget {
  //String title;
  int number;
  Titles({
    Key key,
    //this.title,
    this.number,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 47),
          child: Text(
            contact[number][0],
            style: TextStyle(
              fontSize: 36,
              color: leftTitle,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 12),
          child: Text(
            "/" + contact[number][1],
            style: TextStyle(
              fontSize: 36,
              color: leftText,
            ),
          ),
        ),
      ],
    );
  }
}

class Skills extends StatelessWidget {
  int number;
  Skills(this.number);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 33, right: 33, bottom: 28),
      child: Text(
        skills[number],
        style: TextStyle(
          color: rightText,
          fontSize: 36,
        ),
      ),
    );
  }
}
