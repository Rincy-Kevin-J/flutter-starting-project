import 'package:fltprojeect/screens/splash_page_with_background_imaage.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Splash_with_Image(),debugShowCheckedModeBanner: false,
    );
  }
}