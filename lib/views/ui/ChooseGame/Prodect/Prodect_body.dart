import 'package:flutter/material.dart';
import 'package:game_app/views/style/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class ProdectBody extends StatefulWidget {
  const ProdectBody({Key? key}) : super(key: key);

  @override
  State<ProdectBody> createState() => _ProdectBodyState();
}

class _ProdectBodyState extends State<ProdectBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 360,
      width: 195,
      decoration: BoxDecoration(
        color: Colorsapp.bgColor,
        borderRadius: BorderRadius.circular(10),

      ),
      child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(bottom: 10, top: 15, left: 10, right: 10),
            child: Stack(
              children: [
                Container(
                  height: 230,
                  decoration: BoxDecoration(
                    color: Colorsapp.bgColor,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x661e266d),
                        offset: Offset(2.0000002384, 4.0000004768),
                        blurRadius: 7.0000004768,
                      ),
                    ],
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("Images/img_1.png"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        color: Colorsapp.bgColor,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x661e266d),
                            offset: Offset(2.0000002384, 4.0000004768),
                            blurRadius: 7.0000004768,
                          ),
                        ],
                      ),
                      child: OutlinedButton(
                          child: Icon(
                            Icons.check,
                            color: Colorsapp.themeColor,
                            size:30,
                          ),
                          style: OutlinedButton.styleFrom(
                              padding: EdgeInsets.only(right: 1),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                          onPressed: () {
                            setState(() {});
                          }),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(bottom: 8, top: 10, left: 10, right: 10),
            child: Text(
                textAlign: TextAlign.center,
                style: GoogleFonts.cairo(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  height: 1,
                  letterSpacing: 0,
                  color: Colorsapp.dGray,
                ),
                '37,000'),
          ),
        ],
      ),
    );
  }
}
