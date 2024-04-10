import 'package:flutter/material.dart';

void main(){
  runApp(MyApp()) ;
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  MaterialApp(
      home: Youtube(),
    );
  }

}

class Youtube  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Image(image: NetworkImage("https://cdn-icons-png.flaticon.com/128/1384/1384060.png")),
      ),

    );
  }
}