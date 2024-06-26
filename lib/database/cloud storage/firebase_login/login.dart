
import 'package:fltprojeect/database/cloud%20storage/firebase_login/registration.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'db/firebase_fumction.dart';
import 'home.dart';

class LoginFire extends StatelessWidget {
  final emailController = TextEditingController();
  final passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Login Page"),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                controller:emailController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'EMAIL'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                controller:passController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'PASSWORD'),
              ),
            ),
            MaterialButton(
              onPressed: () {
                loginUser();
              },
              color: Colors.blue,
              shape: StadiumBorder(),
              child: Text("Login Here"),
            ),
            TextButton(
                onPressed: () {
                  Get.to(RegFire());
                },
                child: const Text("Not A User?? Register Here!!"))
          ],
        ),
      ),
    );
  }
  void loginUser() {
    String email = emailController.text.trim();
    String pass = passController.text.trim();

    FirebaseFunctions()
        .signInUser(email: email, pwd: pass)
        .then((response) {
      if (response == null) {
        Get.to(HomeFire());
      } else {
        Get.snackbar("Error", response);
      }
    });
  }
}
