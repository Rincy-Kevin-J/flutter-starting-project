import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
class placeView extends StatelessWidget {
  final String? imagepath;
  final String? title;
  final String? place;

  placeView({this.imagepath, this.title, this.place});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Stack(children: [
              Image.network(
                imagepath ?? "",width: 500,
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 5,
                left: 10,
                child: Text(
                  title ?? "",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              )
            ]),
          ],
        ),
      ),
    );
  }
}
