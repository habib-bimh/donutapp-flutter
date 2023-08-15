import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {

  final double borderRadius = 12;

  final String dountflavor;
  final String donutprice;
  final donutColor;
  final String inagename;

  const DonutTile({
    super.key,
    required this.dountflavor,
    required this.donutprice,
    required this.donutColor,
    required this.inagename,
});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: donutColor[50],
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Column(
          children: [
            //price
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: donutColor[100],
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(borderRadius,),topRight: Radius.circular(borderRadius,)  )
                  ),
                  child: Text(
                    "\$"+donutprice,
                    style: TextStyle(
                      color: donutColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                    ),
                  ),
                )
              ],
            ),
            //donut picture
            Padding(padding:EdgeInsets.symmetric(horizontal: 36.0,vertical: 12),
            child: Image.asset(inagename),
            ),
            //donut flavor
            Text(dountflavor,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
            SizedBox(height: 4,),
            Text("Dunkins",
            style: TextStyle(color: Colors.grey[700]),
            ),
            SizedBox(height: 12,),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.pink[400],
                  ),
                  Icon(
                    Icons.add,
                    color: Colors.grey[400],
                  )
                ],
              ),
            )
            //love icon + add button
          ],
        ),
      ),
    );
  }
}
