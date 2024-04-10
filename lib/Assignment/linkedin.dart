

import 'package:fltprojeect/main.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: linkedin(),
    );
  }



}
class linkedin extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigoAccent,
      body: Center(
        child: Image(image: NetworkImage("https://cdn-icons-png.flaticon.com/128/3536/3536505.png")),
      )
      
    );
  }
  
}