import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PageTwo extends StatelessWidget {
  List<String> texts = [
    "Dart ve Flutter teknolojilerinin yanında,\nUI - UX alanlarında kendimi geliştirerek",
    "yeni yetenekler",
    "kazanmaya çalışıyorum.",
    "zorlanacağımı biliyorum fakat keşfedilene kadar yeteneklerimi geliştirmeliyim.",
  ];

  Color mainColor = Color(0xFF000000);
  Color textColor1 = Color(0xFFA7A49C);
  Color textColor2 = Color(0xFFFFFFFF);
  Color textColor3 = Color(0xFF726D6D);

  String imgPath = "assets/images/black-image.jpg";

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: mainColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(top: 150, left: 50, right: 50),
            alignment: Alignment.center,
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: 969.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AutoSizeText(
                    texts[0],
                    style: GoogleFonts.poppins(
                      color: textColor1,
                      fontWeight: FontWeight.w200,

                      //fontSize: 48.0,
                    ),
                    minFontSize: 48.0,
                    textAlign: TextAlign.center,
                  ),
                  AutoSizeText(
                    texts[1],
                    style: GoogleFonts.poppins(
                      color: textColor2,
                      fontWeight: FontWeight.w600,
                      //fontSize: 48.0,
                    ),
                    minFontSize: 48.0,
                  ),
                  AutoSizeText(
                    texts[2],
                    style: GoogleFonts.poppins(
                      color: textColor1,
                      fontWeight: FontWeight.w200,
                      //fontSize: 48.0,
                    ),
                    minFontSize: 48.0,
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 430.0,
                    padding: EdgeInsets.only(bottom: 70, left: 50),
                    alignment: Alignment.bottomLeft,
                    child: AutoSizeText(
                      texts[3],
                      style: GoogleFonts.poppins(
                        color: textColor3,
                        fontWeight: FontWeight.w300,
                        letterSpacing: 0.7,
                      ),
                      minFontSize: 17.0,
                    ),
                  ),
                  Expanded(
                    child: Image.asset(
                      imgPath,
                      fit: BoxFit.scaleDown,
                      alignment: Alignment.bottomRight,
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
