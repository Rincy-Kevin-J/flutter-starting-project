import 'package:fltprojeect/screens/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegistrationPage extends StatefulWidget {
  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  TextEditingController passController = TextEditingController();

  var formkey = GlobalKey<FormState>();

  var pwd_visibility = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          //to avoid scrollable action
          physics: const NeverScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Form(
              key: formkey,
              //if we donot set key here validation willnot occured
              child: Column(
                children: [
                  const SizedBox(height: 50), // Adding space at the top
                  Text(
                    "SignUp Page",
                    style: GoogleFonts.sahitya(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Colors.blue,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Create Your Account",
                    style: GoogleFonts.sahitya(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person_outline_outlined),
                      border: OutlineInputBorder(),
                      labelText: "UserName",
                      hintText: 'Enter your Username here',
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    validator: (email) {
                      if (email!.isEmpty || !email.contains("@gmail.com")) {
                        return 'email must be a valid';
                      } else {
                        return null;
                      }
                    },
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.person_outline_outlined),
                      border: OutlineInputBorder(),
                      labelText: "Email",
                      hintText: 'Enter your email here',
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    controller: passController,
                    obscureText: true,
                    obscuringCharacter: "*",
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
                      border: OutlineInputBorder(),
                      labelText: "Password",
                      hintText: 'Enter your password here',
                      helperText:
                          'Password must contain upper and lowercase letters',
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    obscureText: true,
                    obscuringCharacter: "*",
                    validator: (confirmpassword) {
                      if (confirmpassword!.isEmpty ||
                          confirmpassword != passController.text) {
                        return "password empty/mismatch";
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
                      border: OutlineInputBorder(),
                      labelText: "Confirm Password",
                      hintText: 'Confirm your password here',
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  MaterialButton(
                    onPressed: () {
                      var valid = formkey.currentState!.validate();
                      if (valid == true) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text("Registration Failed")));
                      }
                    },
                    color: Colors.blue,
                    minWidth: 200,
                    shape: const StadiumBorder(),
                    child: const Text("Sign Up"),
                  ),
                  const SizedBox(height: 20), // Adjusted spacer
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                      },
                      child: Text(
                        "Already registered ??Sign in Here!!",
                        style: GoogleFonts.cabin(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      )),
                  // RichText(text: const TextSpan(
                  //     text: 'Already have an account?',
                  //     style: TextStyle(
                  //       fontWeight: FontWeight.normal,
                  //       color: Colors.black,
                  //     ),
                  //     children: [
                  //     TextSpan(
                  //     text: "Login",
                  //     style: TextStyle(
                  //         fontWeight: FontWeight.bold,
                  //         fontSize: 20,
                  //         color: Colors.black)
                  //
                  // )
                  //
                  //     ]
                  //
                  // ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
