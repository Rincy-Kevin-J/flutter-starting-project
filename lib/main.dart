import 'package:fltprojeect/UI/Home.dart';
import 'package:fltprojeect/screens/places/screens/views/placedetails.dart';
import 'package:fltprojeect/screens/places/screens/views/placehome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: placeHome(),
      ///define all the pages in the app with your own names
      routes: {
        'placeDetails': (context) => PlaceDetails(),
        'homepage': (context) => Home(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}


