import 'package:fltprojeect/project/prj_welcome.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Front extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xFFBC7FCD),
      body: SafeArea(child: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child:Column(
          children: [
            SizedBox(height: 250),
            Center(
              child: Text("Welcome",
                  style: GoogleFonts.aboreto(
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                      color: Colors.white)),
            ),
            Center(
              child: Text("to\n Learning Hub",
                textAlign: TextAlign.center,
                style: GoogleFonts.aboreto(
                    fontWeight:FontWeight.bold,
                    fontSize:50,
                    color:Colors.white),

              ),
            ),
            // Image.network(
            //   "https://tse1.mm.bing.net/th?id=OIP.5QzN3TgZKmfJ6AFach_sEQHaEK&pid=Api&P=0&h=180",
            //   fit: BoxFit.cover,
            // ),
            MaterialButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomeLearn())) ;

            },
              color: Colors.white,
              minWidth: 200,
              shape: StadiumBorder(),
              child: Text("Next",style: TextStyle(fontSize: 25,color: Color(0xFF6C22A6)),),
            ),

          ],


        ) ,
      )),
    );
  }
}