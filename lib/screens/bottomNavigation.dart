import 'package:fltprojeect/Practice/watsapp_chat_screen.dart';
import 'package:fltprojeect/screens/Slivers.dart';
import 'package:fltprojeect/screens/atmcard.dart';
import 'package:fltprojeect/screens/carousel_slider.dart';
import 'package:fltprojeect/screens/gridview/Gridviewcounter3.dart';
import 'package:fltprojeect/utils/mycolor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int index=0;
  List<Widget>screens=[
    GridView3(),
    ChatScreen(),
    SliderC(),
    CustomScroll(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.basicColor,
        title: Text("Bottom Nav Bar"),
      ),

      bottomNavigationBar: BottomNavigationBar(
          currentIndex:index,
          type: BottomNavigationBarType.fixed,
          backgroundColor: MyColors.basicColor,
          onTap: (tappedindex) {
            setState(() {
              index=tappedindex;

            });
          },

          items:[
        BottomNavigationBarItem(icon: Icon(Icons.home),
        label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.ac_unit_rounded),
         label: "Search"),
        BottomNavigationBarItem(icon: Icon(Icons.home),
            label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.home),
            label: "Home"),
      ] ),
      body: screens[index],
    );
  }
}
