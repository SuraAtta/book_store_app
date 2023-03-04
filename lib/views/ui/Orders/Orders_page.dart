import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../style/colors.dart';

class OrdersPage extends StatefulWidget {
  const OrdersPage({Key? key}) : super(key: key);

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
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
                  'الطلبات',
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
