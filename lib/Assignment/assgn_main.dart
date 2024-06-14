import 'package:fltprojeect/Assignment/amaya.dart';
import 'package:fltprojeect/database/local_storage/sqflite_crud/task_manager/views/splash.dart';
import 'package:fltprojeect/database/local_storage/sqflite_crud/task_manager/views/task_home.dart';
import 'package:fltprojeect/screens/webview.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: WebViewEx(),debugShowCheckedModeBanner: false,
    );
  }
}