import 'package:fltprojeect/Practice/tabWatsapp.dart';
import 'package:fltprojeect/Practice/whatsapp_bottomNavigation.dart';
import 'package:fltprojeect/UI/BottomNav.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomW(),
      debugShowCheckedModeBanner: false,
    );
  }
}
