import 'package:fltprojeect/project/Signprj.dart';
import 'package:fltprojeect/project/firstpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../screens/Listview/home.dart';
import '../screens/Sign_up.dart';

class Loginlearn extends StatefulWidget {
  @override
  State<Loginlearn> createState() => _LoginPageState();
}

class _LoginPageState extends State<Loginlearn> {
  // TextEditingController passController = TextEditingController();
  String username = "admin@";
  String password = "abc123";
  var usercontroller = TextEditingController();
  var pwdcontroller = TextEditingController();
  var formkey = GlobalKey<FormState>();
  var pwd_visibility = true;

  @override
  void dispose() {
    super.dispose();
    usercontroller.dispose();
    pwdcontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3CCF3),
      body: SafeArea(
        child: SingleChildScrollView(
          //to avoid scrollable action
          physics: const NeverScrollableScrollPhysics(),
          child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Form(
                key: formkey,
                child: Column(
                  children: [
                    const SizedBox(height: 200),
                    Text("Login Page",
                        style: GoogleFonts.sahitya(
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                            color: Color(0xFF6C22A6))),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Login To Your Account",
                          style: GoogleFonts.sahitya(
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                              color: Color(0xFF6C22A6))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: usercontroller,
                        validator: (email) {
                          if (email!.isEmpty || !email.contains("@")) {
                            return "email must be valid";
                          } else {
                            return null;
                          }
                        },
                        decoration:  InputDecoration(
                            prefixIcon: Icon(Icons.person_outline_outlined),
                            border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
                            labelText: "Email",
                            hintText: "Enter Your Email"),
                      ),
                    ),
                     SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        obscureText: true,
                        obscuringCharacter: "*",
                        controller: pwdcontroller,
                        validator: (password) {
                          if (password!.isEmpty || password.length < 6) {
                            return "password is empty/check the length";
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.password_outlined),
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  if (pwd_visibility == true) {
                                    pwd_visibility = false;
                                  } else {
                                    pwd_visibility = true;
                                  }
                                });
                              },
                              icon: Icon(pwd_visibility == true
                                  ? Icons.visibility_off
                                  : Icons.visibility)),
                          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
                          labelText: "Password",
                          hintText: 'Enter your password here',
                          helperText:
                          'Password must contain upper and lowercase letters',
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    MaterialButton(
                      onPressed: () {
                        if (username == usercontroller.text &&
                            password == pwdcontroller.text) {
                          // successSnackbar(context);
                          ScaffoldMessenger.of(context)
                              .showSnackBar(
                              SnackBar(content: Text("sucess")));
    
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Firstlearn()));
                        } else {
                          // errorSnackbar(context);
    
                          ScaffoldMessenger.of(context)
                              .showSnackBar(SnackBar(content: Text("error")));
                        }
                        usercontroller.clear();
                        pwdcontroller.clear();
                      },
                      color: Color(0xFF6C22A6),
                      minWidth: 200,
                      shape: const StadiumBorder(),
                      child: const Text("Login",style: TextStyle(fontSize: 20,color: Colors.white),),
    
                    ),
                    RichText(
                        text: TextSpan(
                            text: "Don't have an account?",
                            style: const TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Color(0xFF6C22A6)),
                            children: [
                              TextSpan(
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Signlearn()));
                                    },
                                  text: "SignUp",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 20,
                                      color: Color(0xFF6C22A6)))
                            ])),
                    // SizedBox(height: MediaQuery
                    //     .of(context)
                    //     .size
                    //     .height * 0.2),
                    // Image.network(
                    //   "https://tse4.mm.bing.net/th?id=OIP.tD1MGBJC9FLrjeXFHshPCwHaHa&pid=Api&P=0&h=180",
                    //   fit: BoxFit.cover,
                    // ),
                  ],
                ),
              )),
        ),
      ),
    );
  }
}