import 'package:fltprojeect/utils/text-style.dart';
import 'package:flutter/material.dart';

class HiveHome extends StatelessWidget {
  String?name;
  HiveHome(this.name,{super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text("Welcome $name",
        style: MyTextThemes.textheadingg,),
      ),
    );
  }
}
