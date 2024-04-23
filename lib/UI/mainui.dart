import 'package:fltprojeect/UI/BottomNav.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Assignment/staggered_gridview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Bottom(),
    );
  }
}