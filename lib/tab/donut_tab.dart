import 'package:donut_app/util/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  //const DonutTab({Key? key}) : super(key: key);

  List donutsOnSale = [
    //dountflavor, donutprice, donutcolor, inagename
    ["Ice Cream",  "36", Colors.blue, "assets/imags/donut.png"],
    ["Strawberry",  "46", Colors.red, "assets/imags/donut (1).png"],
    ["Grape Ape",  "26", Colors.purple, "assets/imags/donut (2).png"],
    ["Choco",  "95", Colors.brown, "assets/imags/doughnut.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: donutsOnSale.length,
        padding: EdgeInsets.all(12),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1/ 1.5
        ),
        itemBuilder: (context, index){
        return DonutTile(
          dountflavor:donutsOnSale[index][0],
          donutprice: donutsOnSale[index][1],
          donutColor: donutsOnSale[index][2],
          inagename: donutsOnSale[index][3],


        );
        });
  }
}
