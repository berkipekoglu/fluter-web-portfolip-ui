import 'package:flutter/material.dart';
import 'package:portfolio/widgets/pageFour.dart';
import 'package:portfolio/widgets/pageOne.dart';
import 'package:portfolio/widgets/pageThree.dart';
import 'package:portfolio/widgets/pageTwo.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          PageOne(),
          PageTwo(),
          PageThree(),
          PageFour(),
        ],
      ),
    );
  }
}
