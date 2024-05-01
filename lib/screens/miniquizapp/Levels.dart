import 'dart:math';

import 'package:fltprojeect/screens/miniquizapp/quizmain.dart';
import 'package:flutter/material.dart';

class LevelEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E0342),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color(0xFF1E0342),
        title: Text(
          "Levels",
          style: TextStyle(color: Colors.teal, fontSize: 30),
        ),
      ),
      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => QuizMain(),));
                },
                child: Icon(
                  Icons.pentagon,
                  size: 150,
                  color:
                      Colors.primaries[Random().nextInt(Colors.primaries.length)],
                ),
              ),
              Text(
                "Level  $index",
                style: TextStyle(fontSize: 25, color: Colors.white),
              )
            ],
          );
        },
      ),
    );
  }
}
