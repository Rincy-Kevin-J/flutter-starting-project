import 'package:fltprojeect/project/loginprj.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Signlearn extends StatefulWidget {
  @override
  State<Signlearn> createState() => _signUpPageState();
}

class _signUpPageState extends State<Signlearn> {
  TextEditingController passController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xFFF3CCF3),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .08,
              ),
              Center(
                child: Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,color:  Color(0xFF6C22A6)),
                ),
              ),
              const Text(
                'Create your new account',
                style: TextStyle(fontSize: 18,color: Color(0xFF6C22A6)),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(right: 28, left: 28),
                child: TextFormField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.person),
                      labelText: 'Full Name'),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(right: 28, left: 28),
                child: TextFormField(
                  validator: (email) {
                    if (email!.isEmpty || !email.contains('@')) {
                      return 'email must be valid';
                    } else
                      return null;
                  },
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email),
                      labelText: 'Email'),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(right: 28, left: 28),
                child: TextFormField(
                  validator: (password) {
                    if (password!.isEmpty || password.length < 6) {
                      return 'password is empty/check the lenght';
                    }
                  },
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.lock),
                      labelText: 'Password'),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(right: 28, left: 28),
                child: TextFormField(
                  validator: (confirmpassword) {
                    if (confirmpassword!.isEmpty ||
                        confirmpassword != passController.text) {
                      return 'password mismatch';
                    } else
                      return null;
                  },
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.lock),
                      labelText: 'Confirm password'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  text: const TextSpan(
                      text: 'By signing you agree to our',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w400),
                      children: [
                        TextSpan(text: 'Terms of use and privacy policy')
                      ]),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .05),
              MaterialButton(
                onPressed: () {
                  var valid = formKey.currentState!.validate();
                  if (valid == true) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Loginlearn()));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Registration failed')));
                  }
                },
                color: const Color(0xFF6C22A6),
                shape: const StadiumBorder(),
                child: const Text('Sign up',style: TextStyle(color: Colors.white,fontSize: 20),),
              ),
              RichText(
                text: TextSpan(
                  text: 'Already have an account?',
                  style: TextStyle(color: Color(0xFF6C22A6)),
                  children: [
                    TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Loginlearn()));
                          },
                        text: 'Login in',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold,color: Color(0xFF6C22A6)))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
