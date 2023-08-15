import 'package:donut_app/tab/burger_tab.dart';
import 'package:donut_app/tab/donut_tab.dart';
import 'package:donut_app/tab/pancake_tab.dart';
import 'package:donut_app/tab/pizza_tab.dart';
import 'package:donut_app/tab/smoothi_tab.dart';
import 'package:donut_app/util/my_tab.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //my tabs
  List<Widget> myTabs= const [
    //donut tab
     MyTab(iconPath: "assets/icone/donut (3).png",),
    // burger tab
    MyTab(iconPath: "assets/icone/burger.png"),
    // smoothie tab
    MyTab(iconPath: "assets/icone/smoothie.png"),
    // pancake tab
    MyTab(iconPath: "assets/icone/pancakes.png"),
    // pizza tab
    MyTab(iconPath: "assets/icone/pizza.png"),



  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: Padding(
            padding: const EdgeInsets.all(24.0),
            child: IconButton(
              icon: Icon(Icons.menu,color: Colors.grey[800],size: 36,),
              onPressed: (){
                // open drawer
              },
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: IconButton(
                icon: Icon(Icons.person,color: Colors.grey[800],size: 36,),
                onPressed: (){
                  // account button tapped
                },
              )
            ),
          ],
        ),
        body: Column(children: [
          // i want to eat
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 36.0,vertical: 18),
            child: Row(
              children: [
                Text("I want to eat",style: TextStyle(fontSize: 24),),
                SizedBox(width: 10,),
                Text("EAT",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),

              ],
            )
          ),

          // tab bar
           TabBar(tabs: myTabs),
          // tab bar view
          Expanded(
              child: TabBarView(
                children: [
                  //donut page
                  DonutTab(),
                  //burger apge
                  BurgerTab(),
                  //smoothie page
                  SmoothieTab(),
                  //pancake page
                  PancakeTab(),
                  // pizza page
                  PizzaTab(),
                ],))

        ],),
      ),
    );
  }
}
