import 'package:fltprojeect/Practice/tabWatsapp.dart';
import 'package:fltprojeect/Practice/watsapp_chat_screen.dart';
import 'package:fltprojeect/Practice/watsappcall.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TabEx(),
      debugShowCheckedModeBanner: false,
    );
  }
}
