import 'package:flutter/material.dart';
import 'Prodect_body.dart';

class ProdectCooseList extends StatefulWidget {
  const ProdectCooseList({Key? key}) : super(key: key);

  @override
  State<ProdectCooseList> createState() => _ProdectCooseListState();
}

class _ProdectCooseListState extends State<ProdectCooseList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio:MediaQuery.of(context).size.width / 1000,
          ),
          itemCount:4,
          itemBuilder: (BuildContext context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 0,top: 15,right: 15,left: 15),
              child: ProdectBody(),
            );
          }
      ),
    );
  }
}
