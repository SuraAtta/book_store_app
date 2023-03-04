import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:game_app/views/ui/AddGame/Add_game.dart';
import 'package:game_app/views/ui/Home/Home_page.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../style/colors.dart';
import '../ChooseGame/Choose_a_game.dart';
import 'Main_nav.dart';



class Navbar extends StatelessWidget {
  Navbar({Key? key}) : super(key: key);
  List<IconData> icons = [
    CupertinoIcons.gamecontroller_alt_fill,
    CupertinoIcons.add_circled_solid,
    CupertinoIcons.square_list,
    CupertinoIcons.add_circled_solid,
  ];
  List<String> texts = [
    " قائمة الالعاب",
    "اضافة لعبة",
    "ألطلبات",
    "أضافة طلب",
  ];
  List<dynamic> Goto=[
    HomePage(),
    AddGame(),
    MainNav(selectedIndex: 1),
    ChooseGame()
  ];

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(
        sigmaY: 5,
        sigmaX: 5,
      ),
      child:
      Drawer(
        child: Material(
          color: Colorsapp.bgColor,
          child: ListView(
            children: <Widget>[
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(height: 40),
                    buildMenuItem(
                      icon:  CupertinoIcons.gamecontroller_alt_fill,
                      text: 'قائمة الالعاب',
                      onClicked: () =>  Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => MainNav(selectedIndex: 0),
                      )),
                    ),
                    const SizedBox(height: 16),
                    buildMenuItem(
                      text: 'أضافة لعبة',
                      icon: CupertinoIcons.add_circled_solid,
                      onClicked: () =>  Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => MainNav(selectedIndex: 1),
                      )
                      )
                      ,),
                    const SizedBox(height: 16),
                    buildMenuItem(
                      text: 'ألطلبات',
                      icon: CupertinoIcons.square_list,
                      onClicked: () =>  Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => MainNav(selectedIndex: 2),
                      ),),                    ),
                    const SizedBox(height: 16),
                    buildMenuItem(
                      text: 'أضافة طلب',
                      icon: CupertinoIcons.add_circled_solid,
                      onClicked: () =>  Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => MainNav(selectedIndex: 3),
                      ))                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// Widget buildSearchField() {
//   final color = Colors.black26;
//
//   return TextField(
//     style: TextStyle(color: color),
//     decoration: InputDecoration(
//       contentPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
//       hintText: 'Search',
//       hintStyle: TextStyle(color: color),
//       prefixIcon: Icon(Icons.search, color: color),
//       filled: true,
//       fillColor: Colors.black,
//       enabledBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(5),
//         borderSide: BorderSide(color: color.withOpacity(0.7)),
//       ),
//       focusedBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(5),
//         borderSide: BorderSide(color: color.withOpacity(0.7)),
//       ),
//     ),
//   );
// }

Widget buildMenuItem({
  required String text,
  required IconData icon,
  VoidCallback? onClicked,
}) {
  final color = Colors.black;
  final hoverColor =  Colors.black;

  return
    ListTile(
      title:  Align(
        alignment: Alignment.centerRight,
        child: Text(text, style: GoogleFonts.cairo(
          textStyle: TextStyle(
              fontSize: 20,
              color: color,
              letterSpacing: 2,
              fontWeight: FontWeight.bold),
        ),
        ),
      ),
      trailing: Icon(icon,size: 30, color: Colors.black),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
}

void selectedItem(BuildContext context, int index) {
  Navigator.of(context).pop();
  switch (index) {
    case 0:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => MainNav(selectedIndex: 0),
      ));
      break;
    case 1:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => MainNav(selectedIndex: 1),
      ));
      break;
    case 2:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => MainNav(selectedIndex: 2),
      ));
      break;
    case 3:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => MainNav(selectedIndex: 3),
      ));
      break;

  }
}

