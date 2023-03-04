import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors.dart';

class Text_Field extends StatelessWidget {
  Text_Field({
    Key? key,
    required this.MyController,
    required this.hintText,
    required this.labelText,
    required this.pass,
    required this.onChanged,
    this.keyboardType,
  }) : super(key: key);
  final TextEditingController MyController;
  final RxString hintText;
  final RxString labelText;
  final bool pass;
  static String text1 = '';
  final TextInputType? keyboardType;
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: SizedBox(
        width: 325,
        height: 60,
        child: TextFormField(
            textDirection: TextDirection.rtl,
            onChanged: (text) {
              onChanged!(text);
            },
            keyboardType: keyboardType,
            obscureText: pass,
            controller: MyController,
            decoration: InputDecoration(
                fillColor: Colorsapp.white,
                filled: true,
                hintTextDirection: TextDirection.rtl,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                //errorBorder:InputDecoration.errorText,
                hintText: " $hintText   ",
                hintStyle: GoogleFonts.cairo(
                  textStyle: GoogleFonts.cairo(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    height: 1,
                    letterSpacing: 0,
                    color: Colorsapp.dGray,
                  ),
                ),
                contentPadding: const EdgeInsets.only(top: 10, right: 12)),
            onTap: () {}),
      ),
    );
  }
}
