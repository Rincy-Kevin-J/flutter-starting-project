import 'package:fltprojeect/Practice/watsapp_chat_screen.dart';
import 'package:fltprojeect/Practice/watsappcall.dart';
import 'package:flutter/material.dart';

import '../screens/Listview/new_one.dart';
import '../screens/gridview/Gridviewcounter3.dart';

class BottomW extends StatefulWidget {
  @override
  State<BottomW> createState() => _BottomState();
}

class _BottomState extends State<BottomW> {
  int index = 0;
  List<Widget> screen = [
    ChatScreen(),
    GridView3(),
    Center(
      child: Text("hi"),
    ),
    CallScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.white,
        showUnselectedLabels: true,
        currentIndex: index,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        onTap: (tappedindex) {
          setState(() {
            index = tappedindex;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.chat,
              ),
              label: "Chat"),
          BottomNavigationBarItem(
              icon: Icon(Icons.update_outlined), label: "Update"),
          BottomNavigationBarItem(
              icon: Icon(Icons.security_update_sharp), label: "Community"),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: "Calls"),
        ],
      ),
      body: screen[index],
    );
  }
}
