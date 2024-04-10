import 'package:fltprojeect/Assignment/assgn_login.dart';
import 'package:fltprojeect/Assignment/assgn_welcome.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Welcome(),debugShowCheckedModeBanner: false,
    );
  }
}