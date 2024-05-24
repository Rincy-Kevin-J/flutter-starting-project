import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'db/firebase_fumction.dart';
import 'login.dart';

class HomeFire extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              //await FirebaseAuth.instance.signOut();
              logoutUser();
            },
            child: Text("LogOut")),
      ),
    );
  }

  void logoutUser() {
    FirebaseFunctions().logoutUser().then((value) =>
        Get.offAll(LoginFire()));
  }
}