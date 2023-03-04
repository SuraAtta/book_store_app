import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:app_popup_menu/app_popup_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';
import 'package:game_app/views/ui/Home/Home_page.dart';

import 'Home/Main_nav.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.black, animate: true);
    return AnimatedSplashScreen(
      duration: 3000,
      splash: Image.asset("Images/img.png"),
      nextScreen: MainNav(selectedIndex: 0,),
      splashTransition: SplashTransition.fadeTransition,
      backgroundColor: Colors.black,
      splashIconSize: 500,
    );
  }
}
