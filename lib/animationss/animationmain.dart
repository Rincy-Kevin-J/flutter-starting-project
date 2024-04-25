import 'package:fltprojeect/animationss/animation.dart';
import 'package:fltprojeect/animationss/heroanimation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HeroMain(),
      theme: ThemeData.dark(),
    );
  }
}