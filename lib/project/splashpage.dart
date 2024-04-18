import 'dart:async';

import 'package:fltprojeect/project/Front.dart';
import 'package:fltprojeect/project/prj_welcome.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
///to set background image or gradient in a screen
class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Front()));
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
                  Image(image: AssetImage("assets/icons/learning.png")),
                  Text(
                      "Learning Hub",

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
