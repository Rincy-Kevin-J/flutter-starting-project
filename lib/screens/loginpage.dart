
import 'package:fltprojeect/Assignment/assgn_plant.dart';
import 'package:fltprojeect/screens/Sign_up.dart';
import 'package:fltprojeect/screens/Listview/home.dart';
import 'package:fltprojeect/utils/mycolor.dart';
import 'package:fltprojeect/screens/welcome.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                    const SizedBox(height: 50),
                    Text("Login Page",
                        style: GoogleFonts.abel(
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                            color: Colors.blue)),
                    Text("Login To Your Account",
                        style: GoogleFonts.aboreto(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.black)),
                    TextFormField(
                      controller: usercontroller,
                      validator: (email) {
                        if (email!.isEmpty || !email.contains("@")) {
                          return "email must be valid";
                        } else {
                          return null;
                        }
                      },
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.person_outline_outlined),
                          border: OutlineInputBorder(),
                          labelText: "Email",
                          hintText: "Enter Your Email"),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
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
                    /*
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
                              const SnackBar(content: Text("Login Failed")));
                        }
                      },
                      color: Colors.blue,
                      minWidth: 200,
                      shape: StadiumBorder(),
                      child: Text("Login"),
                    ),
                    */

                    MaterialButton(
                      onPressed: () {
                        if (username == usercontroller.text &&
                            password == pwdcontroller.text) {
                          // successSnackbar(context);
                          ScaffoldMessenger.of(context)
                              .showSnackBar(SnackBar(content: Text("sucess")));

                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>Homepage()));
                        } else {
                          // errorSnackbar(context);

                          ScaffoldMessenger.of(context)
                              .showSnackBar(SnackBar(content: Text("error")));

                        }
                        usercontroller.clear();
                        pwdcontroller.clear();
                      },
                      color: Colors.blue,
                      minWidth: 200,
                      shape: const StadiumBorder(),
                      child: const Text("Login"),

                    ),
                    RichText(
                        text: TextSpan(
                            text: "Don't have an account?",
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                            children: [
                          TextSpan(
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          RegistrationPage()));
                                },
                              text: "SignUp",
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black))
                        ])),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.2),
                    Image.network(
                      "https://tse4.mm.bing.net/th?id=OIP.tD1MGBJC9FLrjeXFHshPCwHaHa&pid=Api&P=0&h=180",
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
