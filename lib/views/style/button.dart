import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors.dart';



class Button1 extends StatelessWidget {
  final String text;
  final void Function() onPressed;

  Button1 ({Key? key,
    required this.text, required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 30 ,left: 30,right: 30,top: 30),
        width: 250,
        height: 55,
        decoration: BoxDecoration(
          color: Colorsapp.bgColor,
          boxShadow: [
            BoxShadow(
              color: Color(0x661e266d),
              offset: Offset(2.0000002384, 4.0000004768),
              blurRadius: 7.0000004768,
            ),
          ],
        ),
        child:  RawMaterialButton(
          onPressed: () {
            onPressed();
          },
          fillColor:  Colorsapp.black,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
                text,
                style: GoogleFonts.cairo(
              fontSize: 27,
              fontWeight: FontWeight.w700,
              height: 1,
              letterSpacing: 0,
              color: Colorsapp.bgColor,
            ),
            ),
          ),
        ));

  }}
