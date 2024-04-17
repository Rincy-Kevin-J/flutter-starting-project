import 'package:fltprojeect/Assignment/staggered_gridview.dart';
import 'package:flutter/material.dart';

import '../screens/gridview/stag_gridview2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Reader(),
    );
  }
}

/// main()- to run a program main function is mandatory
/// runApp()- attach widget tree to the screen (widget to pixel)
/// build - to create widget tree , must return a widget
/// BuildContext - used to locate each widget and its position in a widget tree