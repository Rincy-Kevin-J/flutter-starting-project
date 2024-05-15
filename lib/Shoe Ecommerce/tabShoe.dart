import 'package:fltprojeect/Practice/watsappcall.dart';
import 'package:fltprojeect/Shoe%20Ecommerce/shoes.dart';
import 'package:fltprojeect/screens/gridview/Gridview4.dart';
import 'package:fltprojeect/screens/gridview/Gridviewcounter3.dart';
import 'package:flutter/material.dart';

class TabShoe extends StatelessWidget {
  const TabShoe({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              "All Shoes",
              style: TextStyle(fontSize: 25),
            ),
          ),
          actions: [
            Row(
              children: [
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.search_outlined))
              ],
            )
          ],
          bottom: const TabBar(tabs: [
            Text(
              "All",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "Life Style",
              style: TextStyle(fontSize: 19),
            ),
            Text(
              "AppBar",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "Running",
              style: TextStyle(fontSize: 20),
            )
          ]),
        ),
        body: TabBarView(children: [
          Shoes(),
          GridView3(),
          GridView4(),
          CallScreen(),
        ]),
      ),
    );
  }
}
