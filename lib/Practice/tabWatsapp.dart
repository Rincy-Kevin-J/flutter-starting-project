import 'package:fltprojeect/Practice/watsapp_chat_screen.dart';
import 'package:fltprojeect/Practice/watsappcall.dart';
import 'package:fltprojeect/screens/gridview/Gridview4.dart';
import 'package:fltprojeect/screens/gridview/Gridviewcounter3.dart';
import 'package:flutter/material.dart';

class TabEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        // bottomNavigationBar:   ,
        appBar: AppBar(
          title: const Text(
            "WatsApp",
          ),
          backgroundColor: Colors.teal[800],
          bottom: const TabBar(tabs: [
            Icon(
              Icons.people_outline,
              color: Colors.white,
              size: 20,
            ),
            Text("Chat"),
            Text("Status"),
            Text("Call")
          ]),
        ),
        body: TabBarView(children: [
          ChatScreen(),
          GridView3(),
          GridView4(),
          CallScreen(),
        ]),
      ),
    );
  }
}
