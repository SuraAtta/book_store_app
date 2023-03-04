import 'package:app_popup_menu/app_popup_menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:game_app/views/ui/ChooseGame/Prodect/list.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../style/button.dart';
import '../../style/colors.dart';
import 'package:dropdown_button2/dropdown_button2.dart';



class ChooseGame extends StatefulWidget {
  const ChooseGame({Key? key}) : super(key: key);

  @override
  State<ChooseGame> createState() => _ChooseGameState();
}

class _ChooseGameState extends State<ChooseGame> {
  String? selectedValue;
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 100,
                      height: 50,
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton2(
                          isExpanded: true,
                          items: [

                          ],
                          value: selectedValue,
                          onChanged: (value) {
                            setState(() {
                              selectedValue = value as String;
                              print(selectedValue);
                            });
                          },
                          icon: const Icon(
                            Icons.arrow_drop_down,
                          ),
                          iconSize: 50,
                          iconEnabledColor: Colors.black,
                          iconDisabledColor: Colors.black,
                          buttonHeight: 50,
                          buttonWidth: 200,
                          buttonPadding:
                          const EdgeInsets.only(left: 14, right: 20),
                          buttonDecoration: BoxDecoration(
                            color:  Colorsapp.bgColor,
                          ),
                          buttonElevation: 0,
                          itemHeight: 40,
                          itemPadding:
                          const EdgeInsets.only(left: 14, right: 14),
                          dropdownMaxHeight: 200,
                          dropdownWidth: 340,
                          dropdownPadding: null,
                          dropdownDecoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            color: Colorsapp.themeColor,
                          ),
                          dropdownElevation: 8,
                          scrollbarRadius: const Radius.circular(40),
                          scrollbarThickness: 6,
                          scrollbarAlwaysShow: true,
                          offset: const Offset(0, 0),
                        ),
                      ),
                    ),
                    Text(
                      'أختر العابك',
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
                Expanded(
                  child: Stack(
                    children: [
                      ProdectCooseList(),
                      Align(
                        alignment: Alignment.bottomCenter,
                          child:
                          Button1(text: 'أتمام الشراء', onPressed: () {  },)),
                    ],
                  ),
                ),
              ],
            ),
          )
        )
    );

  }
}
