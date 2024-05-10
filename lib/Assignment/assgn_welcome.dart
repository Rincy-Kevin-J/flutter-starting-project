import 'dart:ui';

import 'package:fltprojeect/Assignment/assgn_login.dart';
import 'package:fltprojeect/Assignment/assgn_sign.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var devHeight = MediaQuery.of(context).size.height;
    var devWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Container(
      height: devHeight,
      width: devWidth,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(.7), BlendMode.dstATop),
              image: const NetworkImage(
                  "https://images.unsplash.com/photo-1491147334573-44cbb4602074?q=80&w=1587&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8f"))),
      child: SafeArea(
          child: Column(
        children: [
          const SizedBox(height: 50),
          Text(
            "The best\n app for\n your plants ",
            textAlign: TextAlign.center,
            style: GoogleFonts.sahitya(
                fontWeight: FontWeight.bold, fontSize: 70, color: Colors.white),
          ),
          SizedBox(
            height: devHeight * 0.2,
          ),
          MaterialButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Signupassign(),
                  ));
            },
            color: Colors.white,
            minWidth: 200,
            shape: const StadiumBorder(),
            child: const Text("Sign Up",
                style: TextStyle(fontSize: 20, color: Colors.green)),
          ),
          const SizedBox(
            height: 15,
          ),
          MaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Loginsign(),
                    ));
              },
              color: Colors.green,
              minWidth: 200,
              shape: const StadiumBorder(),
              child: const Text(
                "Login",
                style: TextStyle(fontSize: 20, color: Colors.white),
              )),
        ],
      )),
    ));
  }
}
