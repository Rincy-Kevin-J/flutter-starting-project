

import 'package:flutter/material.dart';

void main(){
 runApp(MyApp()) ;
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  MaterialApp(
      home: Spotify(),
    );
  }
  
}

class Spotify  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
     backgroundColor: Colors.black, 
      body: Center(
        child: Image(image: NetworkImage("https://cdn-icons-png.flaticon.com/128/2111/2111624.png")),
      ),
      
    );
  }
}