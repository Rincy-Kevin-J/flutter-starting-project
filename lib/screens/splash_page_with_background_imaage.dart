import 'dart:async';

import 'package:fltprojeect/screens/gridview/Gridview4.dart';
import 'package:fltprojeect/screens/gridview/Gridview5.dart';
import 'package:fltprojeect/screens/gridview/Gridviewcounter3.dart';
import 'package:fltprojeect/screens/Slivers.dart';
import 'package:fltprojeect/screens/gridview/gridview2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
///to set background image or gradient in a screen
class Splash_with_Image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=> GridView4()));
    });
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  //Colors.pinkAccent,
                  //Colors.black,
                  Colors.blue,
                  Colors.purple,
                  Colors.brown,
                  //Colors.greenAccent,
                 // Colors.orange,
                ]),
            // image: DecorationImage(
            //     fit: BoxFit.cover,
            //     image: NetworkImage("https://images.pexels.com/photos/7130473/pexels-photo-7130473.jpeg?auto=compress&cs=tinysrgb&w=600"))
          ),
          child:  Center(
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
              Image(image: NetworkImage("https://cdn-icons-png.flaticon.com/128/6009/6009062.png")),
              Text(
                "Music Band",

                ///style using google fonts
                style:GoogleFonts.merriweather(
                  fontSize:40,
                  color:Colors.white,
                )

                ///style using default textstyle
                // style: TextStyle(
                //     fontSize: 70,
                //     fontStyle: FontStyle.italic,
                //     color: Colors.teal),
              )
            ]),
          )),
    );
  }
}
