import 'package:fltprojeect/screens/Sign_up.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'loginpage.dart';

class Welcome extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(child: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child:Column(
          children: [
            SizedBox(height: 50),
            Text("Welcome",
                style: GoogleFonts.abel(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Colors.black)),
              Text("Slash Flutter provides extraordinary flutter tutorials.Do Subscribe!",
              textAlign: TextAlign.center,
              style: GoogleFonts.sahitya(
                  fontWeight:FontWeight.normal,
                       fontSize:20,
              color:Colors.black),

                  ),
            Image.network(
              "https://tse1.mm.bing.net/th?id=OIP.5QzN3TgZKmfJ6AFach_sEQHaEK&pid=Api&P=0&h=180",
              fit: BoxFit.cover,
            ),
    MaterialButton(onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage())) ;

    },
      color: Colors.white,
      minWidth: 200,
      shape: StadiumBorder(),
      child: Text("Login"),
    ),
            MaterialButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>RegistrationPage())) ;

            },
              color: Colors.blue,
              minWidth: 200,
              shape: StadiumBorder(),
              child: Text("Sign up"),
            )





          ],


        ) ,
      )),
    );
  }
}
