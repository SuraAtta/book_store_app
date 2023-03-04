import 'package:app_popup_menu/app_popup_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../style/button.dart';
import '../../style/colors.dart';
import '../../style/text_filde.dart';
import 'add_image.dart';

class AddGame extends StatefulWidget {
  const AddGame({Key? key}) : super(key: key);

  @override
  State<AddGame> createState() => _AddGameState();
}

class _AddGameState extends State<AddGame> {
  final TextEditingController name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colorsapp.bgColor, animate: true);
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colorsapp.bgColor,
          height: double.maxFinite,
          width: double.maxFinite,
          child: Expanded(
            child: ListView(
              children: [
                Column(
                  children: [
                    Text(
                      "أضافة لعبة",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.cairo(
                        fontSize: 27,
                        fontWeight: FontWeight.w700,
                        height: 1,
                        letterSpacing: 0,
                        color: Color(0xff1e1e1e),
                      ),
                    ),
                    Container(
                      child: image_name_profile(),
                    ),
                    Container(
                      height: 650,
                      width: 330,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20,bottom: 15),
                            child: Text("الأسم",style: GoogleFonts.cairo(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              height: 1,
                              letterSpacing: 0,
                              color: Colorsapp.black,
                            ),),
                          ),
                          Text_Field(MyController: name, hintText: "الأسم".obs,  labelText: "null".obs, pass: false, onChanged: (String ) {  },),
                          Padding(
                            padding: const EdgeInsets.only(top: 0,bottom: 15),
                            child: Text("السعر",style: GoogleFonts.cairo(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              height: 1,
                              letterSpacing: 0,
                              color: Colorsapp.black,
                            ),),
                          ),
                          Text_Field(MyController: name, hintText: "السعر".obs,  labelText: "null".obs, pass: false, onChanged: (String ) {  },),
                          Padding(
                            padding: const EdgeInsets.only(top: 0,bottom: 15),
                            child: Text("نوع الجهاز",style: GoogleFonts.cairo(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              height: 1,
                              letterSpacing: 0,
                              color: Colorsapp.black,
                            ),),
                          ),
                          Text_Field(MyController: name, hintText: "نوع الجهاز".obs,  labelText: "null".obs, pass: false, onChanged: (String ) {  },),
                          Padding(
                            padding: const EdgeInsets.only(top: 0,bottom: 15),
                            child: Text("الصنف",style: GoogleFonts.cairo(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              height: 1,
                              letterSpacing: 0,
                              color: Colorsapp.black,
                            ),),
                          ),
                          Text_Field(MyController: name, hintText: "الصنف".obs, labelText: "null".obs, pass: false, onChanged: (String ) {  },),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child:
                              Button1(text: 'حفظ', onPressed: () {  },)),
                        ],
                      ),
                    ),
                   ]
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}
