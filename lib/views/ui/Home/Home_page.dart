import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';
import 'package:game_app/views/style/colors.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Prodect/list.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colorsapp.bgColor, animate: true);
    return Scaffold(
      body: SafeArea(
          child: Container(
        color: Colorsapp.bgColor,
        height: double.maxFinite,
        width: double.maxFinite,
        child: Column(
          children: [
            Text(
              'قائمة الاالعاب',
              textAlign: TextAlign.center,
              style: GoogleFonts.cairo(
                fontSize: 27,
                fontWeight: FontWeight.w700,
                height: 1,
                letterSpacing: 0,
                color: Color(0xff1e1e1e),
              ),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(20),
              child: ProdectList(),
            ))
          ],
        ),
      )),
    );
  }
}
