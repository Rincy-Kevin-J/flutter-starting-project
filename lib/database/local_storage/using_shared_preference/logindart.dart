import 'package:fltprojeect/database/local_storage/using_shared_preference/home.dart';
import 'package:fltprojeect/database/local_storage/using_shared_preference/login.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: LoginShared(),debugShowCheckedModeBanner: false,
    );
  }
}