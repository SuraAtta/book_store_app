import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:unicons/unicons.dart';
import 'dart:io';

import '../../style/colors.dart';


class image_name_profile extends StatefulWidget {
  const image_name_profile({
    Key? key,
  }) : super(key: key);

  @override
  State<image_name_profile> createState() => _image_name_profileState();
}

class _image_name_profileState extends State<image_name_profile> {
  File? image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Column(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                width: 150,
                height: 230,
                decoration: BoxDecoration(
                    color: Colorsapp.white,
                    borderRadius: BorderRadius.circular(10)),
                child: image != null
                    ? Image.file(
                  image!,
                  fit: BoxFit.fill,
                )
                    : Container(
                  width: 100,
                  height: 230,
                  decoration: BoxDecoration(
                      color: Colorsapp.white,
                      ),
                  child: IconButton(
                    onPressed: () {
                      _showDialog(context);
                      print(image?.path);

                      print("object");
                    },
                    icon: Icon(Icons.add,size: 50,color: Colorsapp.dGray,),
                  ),
                ),
              )),
        ],
      ),
    );
  }




  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;

      final imageTemporary = File(image.path);
      setState(() => this.image = imageTemporary);
    } on PlatformException catch (e) {
      print("Failed to pick image : $e");
    }
  }

  Future pickImage_camera() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);
      if (image == null) return;

      final imageTemporary = File(image.path);
      setState(() => this.image = imageTemporary);
    } on PlatformException catch (e) {
      print("Failed to pick image : $e");
    }
  }

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            "اختيار الصورة",
            textDirection: TextDirection.rtl,
            style: GoogleFonts.cairo(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              height: 1,
              letterSpacing: 0,
              color: Colorsapp.black,
            ),
          ),
          content: Text(
            "اختار صورة من : ",
            textDirection: TextDirection.rtl,
            style: GoogleFonts.cairo(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              height: 1,
              letterSpacing: 0,
              color: Colorsapp.black,
            ),
          ),
          actions: [
            MaterialButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      margin: EdgeInsets.only(bottom: 0, left: 0, right: 0),
                      width: 100,
                      height: 40,
                      child: RawMaterialButton(
                        onPressed: () async {
                          await pickImage();
                          Navigator.pop(
                            context,
                          );
                        },
                        fillColor: Colorsapp.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          "المعرض",
                          style: GoogleFonts.inter(
                              fontSize: 18,
                              color: Colorsapp.bgColor,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                  Container(
                      margin: EdgeInsets.only(bottom: 0, left: 0, right: 0),
                      width: 100,
                      height: 40,
                      child: RawMaterialButton(
                        onPressed: () async {
                          await pickImage_camera();
                          Navigator.pop(
                            context,
                          );
                        },
                        fillColor: Colorsapp.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          "الكامرة",
                          style: GoogleFonts.inter(
                              fontSize: 18,
                              color: Colorsapp.bgColor,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                ],
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
