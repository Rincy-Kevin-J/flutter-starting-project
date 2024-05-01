import 'package:fltprojeect/screens/miniquizapp/Levels.dart';
import 'package:fltprojeect/screens/miniquizapp/quizmain.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E0342),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(100.0),
        child: Column(
          children: [
            Container(
              height: 300,
              width: 250,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                    image: AssetImage("assets/icons/quiz.png")),
              ),
            ),
            const Text(
              "Quizzles",
              style: TextStyle(
                  color: Colors.teal,
                  // color: Color(0xFF9AC8CD),
                  fontSize: 50,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Lets Play!",
              style: GoogleFonts.alatsi(color: Colors.white, fontSize: 30),
            ),
            Text(
              "Play now and Level up",
              style:
                  GoogleFonts.abrilFatface(color: Colors.white, fontSize: 22),
            ),
            const SizedBox(
              height: 30,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LevelEx()));
              },
              // color: Color(0xFF9AC8CD),
              color: Colors.teal,
              minWidth: 200,
              shape: const StadiumBorder(),
              child: const Text("Grab a Quiz",
                  style: TextStyle(color: Colors.white, fontSize: 30)),
            )
          ],
        ),
      )),
    );
  }
}
