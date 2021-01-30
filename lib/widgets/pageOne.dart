import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PageOne extends StatelessWidget {
  String logoName = "BERK";

  Color mainColor = Color(0xFF0A13F3);
  Color logoColor = Color(0xFF000000);
  Color mainTitleColor = Color(0xFFFFFBFB);
  Color infoTextColor = Color(0xFFEFF1FE);

  List<String> yazilar = [
    "Mobil Uygulama\nGeliştirici,\nUI-UX meraklısı.",
    "Junior derecesinde mobil uygulama geliştiriyorum. Aynı zamanda UI & UX'e olan merakımdan dolayı bu alanlarda yeni yetenekler kazanıyorum. UI tasarlıyorum, tasarladığım UI'ı kodluyorum, kodladığım tasarımı gerçek bir projeye dönüştürmek için Back-end kodlamasını yapıyorum.\nİleride ki kariyer hedefim UI Developer & Back-end Developer diyebilmektir."
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height - 88,
      color: mainColor,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 25.0),
            child: Text(
              logoName,
              style: TextStyle(
                color: logoColor,
                fontSize: 38,
              ),
            ),
          ),
          SizedBox(
            height: 56,
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.symmetric(horizontal: 50.0),
            child: FittedBox(
              alignment: Alignment.topLeft,
              fit: BoxFit.fitWidth,
              child: AutoSizeText(
                yazilar[0],
                style: TextStyle(
                  color: mainTitleColor,
                ),
                minFontSize: 100,
                textAlign: TextAlign.left,
              ),
            ),
          ),
          SizedBox(
            height: 65.0,
          ),
          Flexible(
            child: Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(left: 50.0, right: 50.0, bottom: 50.0),
              child: SingleChildScrollView(
                child: AutoSizeText(
                  yazilar[1],
                  style: GoogleFonts.montserrat(
                    color: mainTitleColor,
                    fontWeight: FontWeight.w200,
                    fontSize: 30,
                  ),
                  minFontSize: 20,
                  textAlign: TextAlign.left,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
