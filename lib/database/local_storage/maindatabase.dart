import 'package:fltprojeect/database/local_storage/simple_hive/hive_crud.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

void main()async{
  await Hive.initFlutter();
  await Hive.openBox("contactBook");
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: ContactHive(),
      debugShowCheckedModeBanner: false,
    );
  }
}
/// main()- to run a program main function is mandatory
/// runApp()- attach widget tree to the screen (widget to pixel)
/// build - to create widget tree , must return a widget
/// BuildContext - used to locate each widget and its position in a widget tree