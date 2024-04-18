import 'package:fltprojeect/project/Signprj.dart';
import 'package:fltprojeect/project/loginprj.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Assignment/assgn_login.dart';
import '../Assignment/assgn_sign.dart';
import '../screens/Sign_up.dart';
import '../screens/loginpage.dart';

class WelcomeLearn extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var devHeight = MediaQuery.of(context).size.height;
    var devWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFFBC7FCD),
        body: Container(
          height: devHeight,
          width: devWidth,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(.7), BlendMode.dstATop),
                  image: NetworkImage(
                      "https://images.unsplash.com/photo-1527525443983-6e60c75fff46?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8bGVhcm5pbmclMjBzdXBwb3J0fGVufDB8fDB8fHww"))),
          child: SafeArea(
              child: Column(
                children: [
                  SizedBox(height: 50),
                  Text(
                    "PASSION\n LED YOU\n HERE",
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
                            builder: (context) => Signlearn(),
                          ));
                    },
                    color: Colors.white,
                    minWidth: 200,
                    shape: StadiumBorder(),
                    child: const Text("Sign Up",
                        style: TextStyle(fontSize: 25, color: Color(0xFFBC7FCD))),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  MaterialButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Loginlearn(),
                            ));
                      },
                      color: Color(0xFFBC7FCD),
                      minWidth: 200,
                      shape: StadiumBorder(),
                      child: const Text(
                        "Login",
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      )),
                ],
              )),
        )


    );
  }
}
