import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../style/colors.dart';

class EditeGame extends StatefulWidget {
  const EditeGame({Key? key}) : super(key: key);

  @override
  State<EditeGame> createState() => _EditeGameState();
}

class _EditeGameState extends State<EditeGame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
            color: Colorsapp.bgColor,
            height: double.maxFinite,
            width: double.maxFinite,
            child: Column(
              children: [
                Text(
                  'تعديل اللعبة',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.cairo(
                    fontSize: 27,
                    fontWeight: FontWeight.w700,
                    height: 1,
                    letterSpacing: 0,
                    color: Color(0xff1e1e1e),
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
}
