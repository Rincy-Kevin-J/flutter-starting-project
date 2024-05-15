import 'package:flutter/material.dart';
import 'package:fltprojeect/Assignment/medium.dart';

void main(){
  runApp(MyApp());
  
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Medium(),
    );
    
    
}

}
class Medium extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Image(image: AssetImage("assets/icons/medium.png")),
      ),
    );
  }
  
}