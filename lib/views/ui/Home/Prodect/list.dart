import 'package:flutter/material.dart';
import 'Prodect_body.dart';

class ProdectList extends StatefulWidget {
  const ProdectList({Key? key}) : super(key: key);

  @override
  State<ProdectList> createState() => _ProdectListState();
}

class _ProdectListState extends State<ProdectList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio:MediaQuery.of(context).size.width / 1250,
          ),
          itemCount:4,
          itemBuilder: (BuildContext context, index) {
            return Padding(
              padding: const EdgeInsets.all(15),
              child: ProdectBody(),
            );
          }
      ),
    );
  }
}
