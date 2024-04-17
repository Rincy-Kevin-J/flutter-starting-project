import 'package:fltprojeect/UI/musicplayer1.dart';
import 'package:fltprojeect/screens/bottomNavigation.dart';
import 'package:fltprojeect/screens/carousel_slider.dart';
import 'package:fltprojeect/screens/gridview/stag_gridview.dart';
import 'package:fltprojeect/screens/splash_page_with_background_imaage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MusicPlayer(),
      debugShowCheckedModeBanner: false,
    );
  }
}
