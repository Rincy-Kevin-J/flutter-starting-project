import 'package:fltprojeect/UI/BottomNav.dart';
import 'package:fltprojeect/UI/musicplayer1.dart';
import 'package:fltprojeect/project/firstpage.dart';
import 'package:fltprojeect/project/luminar.dart';

import 'package:fltprojeect/screens/bottomNavigation.dart';
import 'package:fltprojeect/screens/carousel_slider.dart';
import 'package:fltprojeect/screens/gridview/stag_gridview.dart';
import 'package:fltprojeect/Shoe%20Ecommerce/shoes.dart';
import 'package:fltprojeect/screens/splash_page_with_background_imaage.dart';
import 'package:fltprojeect/Shoe%20Ecommerce/tabShoe.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Luminar(),
      debugShowCheckedModeBanner: false,
    );
  }
}
