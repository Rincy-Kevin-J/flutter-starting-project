import 'dart:async';

import 'package:fltprojeect/database/local_storage/sqflite_crud/task_manager/views/task_home.dart';
import 'package:fltprojeect/utils/mycolor.dart';
import 'package:fltprojeect/utils/text-style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
