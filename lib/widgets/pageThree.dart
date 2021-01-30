import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PageThree extends StatelessWidget {
  List<String> texts = [
    "dart/. flutter",
    "Mobil Uygulama Geliştirme alanında Dart ve Flutter’ı kullanıyorum. Böylelikle çapraz platformda uygulama çıkarabiliyorum.\n\nMiddle düzey Flutter geliştiricisi olduğumda native dilleri de öğnerek uygulamalarıma gerektiği yerde native destek sağlayacağım."
  ];

  Color mainColor = Color(0xFFF0F0F0);
  Color titleColor = Color(0xFF000000);
  Color textColor = Color(0xFF373535);

  String imgPath = "assets/images/bluePink-image.jpg";

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: mainColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            child: Container(
              padding: EdgeInsets.only(top: 0, left: 98, right: 20),
              alignment: Alignment.centerLeft,
              child: Image.asset(
                imgPath,
                fit: BoxFit.cover,
                width: 585.0,
                height: 575.0,
              ),
            ),
          ),
          Flexible(
            child: Container(
              alignment: Alignment.topRight,
              padding: EdgeInsets.only(right: 68, top: 90),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: AutoSizeText(
                      texts[0],
                      style: GoogleFonts.kronaOne(
                        fontSize: 65.0,
                        color: titleColor,
                      ),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      child: SingleChildScrollView(
                        child: AutoSizeText(
                          texts[1],
                          style: GoogleFonts.poppins(
                            color: textColor,
                            fontWeight: FontWeight.normal,
                          ),
                          minFontSize: 24,
                        ),
                      ),
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
