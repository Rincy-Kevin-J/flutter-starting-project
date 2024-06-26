import 'package:fltprojeect/Assignment/assgn_login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Signupassign extends StatefulWidget {
  @override
  State<Signupassign> createState() => _signUpPageState();
}

class _signUpPageState extends State<Signupassign> {
  TextEditingController passController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .08,
              ),
               const Center(
                child: Text(
                  'Register',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ),
              const Text(
                'Create your new account',
                style: TextStyle(fontSize: 18),
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
              SizedBox(height: MediaQuery.of(context).size.height * .23),
              MaterialButton(
                onPressed: () {
                  var valid = formKey.currentState!.validate();
                  if (valid == true) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Loginsign()));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Registration failed')));
                  }
                },
                color: const Color.fromARGB(255, 18, 189, 169),
                shape: const StadiumBorder(),
                child: const Text('Sign up'),
              ),
              RichText(
                text: TextSpan(
                  text: 'Already have an account?',
                  style: const TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Loginsign()));
                          },
                        text: 'Login in',
                        style: const TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold))
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
