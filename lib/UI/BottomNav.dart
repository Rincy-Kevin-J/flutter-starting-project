import 'package:fltprojeect/UI/Home.dart';
import 'package:fltprojeect/UI/More.dart';
import 'package:fltprojeect/UI/Playlist.dart';
import 'package:fltprojeect/UI/Search.dart';
import 'package:fltprojeect/UI/musicplayer1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/mycolor.dart';

class Bottom extends StatefulWidget {
  @override
  State<Bottom> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<Bottom> {
  int index = 0;
  List<Widget> screens = [
    MusicPlayer(),
    Search(),
    Playlist(),
    More(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.white,

          currentIndex: index,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          onTap: (tappedindex) {
            setState(() {
              index = tappedindex;
            });
          },
          items: [

            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.search_outlined), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.playlist_add), label: "Playlist"),
            BottomNavigationBarItem(
                icon: Icon(Icons.more_horiz), label: "More"),
          ]),
      body: screens[index],
    );
  }
}
