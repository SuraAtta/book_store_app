import 'package:flutter/material.dart';
import 'package:game_app/views/ui/Home/Home_page.dart';
import 'package:game_app/views/ui/Home/Main_nav.dart';
import 'package:game_app/views/ui/Splash.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
           debugShowCheckedModeBanner: false,
      //home: MainNav(selectedIndex: 0,),
      home: Splash(),
        );
  }
}
