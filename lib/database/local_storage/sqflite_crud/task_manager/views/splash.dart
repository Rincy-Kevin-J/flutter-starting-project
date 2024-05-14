import 'dart:async';
import 'package:fltprojeect/database/local_storage/sqflite_crud/task_manager/views/task_home.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => TaskHome()));
    });
    return Scaffold(
      body: Center(
        child: Lottie.asset("assets/animation/task.json"),
      ),

    );
  }
}
