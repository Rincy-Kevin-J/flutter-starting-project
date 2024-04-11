import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StackEx extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children: [
            Container(
              color: Colors.greenAccent,
              height: double.infinity,
              width: double.infinity,
            ),

            Container(
              color: Colors.pinkAccent,
              height: 200,
              width: 110,
            ),
      Positioned(
        left: 200,
        top: 200,
        child: Container(
          color: Colors.blue,
          height: 80,
          width: 80,
        ),
      ),
      ]
        ),

      );
  }
}
