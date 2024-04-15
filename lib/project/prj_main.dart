import 'package:fltprojeect/project/splashpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/splash_page_with_background_imaage.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: SplashPage(),debugShowCheckedModeBanner: false,
    );
  }
}