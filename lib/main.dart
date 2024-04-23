import 'package:fltprojeect/UI/BottomNav.dart';
import 'package:fltprojeect/UI/Home.dart';
import 'package:fltprojeect/UI/musicplayer1.dart';
import 'package:fltprojeect/project/firstpage.dart';
import 'package:fltprojeect/project/luminar.dart';
import 'package:fltprojeect/screens/Shoee/screens/views/shoeHome.dart';
import 'package:fltprojeect/screens/Shoee/screens/views/shoedetails.dart';

import 'package:fltprojeect/screens/bottomNavigation.dart';
import 'package:fltprojeect/screens/bottomsheet.dart';
import 'package:fltprojeect/screens/bottomsheet_classwork.dart';
import 'package:fltprojeect/screens/carousel_slider.dart';
import 'package:fltprojeect/screens/drawer.dart';
import 'package:fltprojeect/screens/drawerEx.dart';
import 'package:fltprojeect/screens/gridview/stag_gridview.dart';
import 'package:fltprojeect/Shoe%20Ecommerce/shoes.dart';
import 'package:fltprojeect/screens/passing_data_between_screens/using_constructor/main_page.dart';
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
      home: ShoeHome(),
      ///define all the pages in the app with your own names
      routes: {
        'shoeDetails': (context) => ShoeDetails(),
        'homepage': (context) => Home(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
