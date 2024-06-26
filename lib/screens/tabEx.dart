import 'dart:ui';

import 'package:fltprojeect/Practice/watsapp_chat_screen.dart';
import 'package:fltprojeect/Practice/watsappcall.dart';
import 'package:flutter/material.dart';
import 'gridview/Gridviewcounter3.dart';
import 'gridview/gridview2.dart';

class TabEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.camera_alt,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                )),
            PopupMenuButton(itemBuilder: (context) {
              return [
                const PopupMenuItem(
                    child: Text("Settings"))];
            })
          ],
          title: Text("WhatsApp"),
          backgroundColor: Colors.teal[800],
          bottom: const TabBar(
              isScrollable: true,
              tabs: [
                Icon(
                  Icons.people_outline,
                  color: Colors.white,
                  size: 20,
                ),
                Text(
                  "Chat",
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
                Text(
                  "Status",
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
                Text(
                  "Call",
                  style: TextStyle(color: Colors.white, fontSize: 22),
                )
              ]),
        ),
        body: TabBarView(children: [
          ChatScreen(),
          CallScreen(),
          GridView3(),
          GridView2(),

        ]),
      ),
    );
  }
}