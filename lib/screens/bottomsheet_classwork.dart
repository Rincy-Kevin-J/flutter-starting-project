import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomShee extends StatelessWidget {
  var name = [
    {"name": "Shopping"},
    {"name": "Education"},
    {"name": "Personal"},
    {"name": "Office"},
    {"name": "Part time"},
    {"name": "Other"},
    {"name": "New"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(
          child: Text(
            "Flutter Bottom Sheet",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: GestureDetector(
              onTap: () => showSheet(context),
              child: Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    color: Colors.blue,
                    child: const Text(
                      "Select the catagory",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    color: Colors.blue,
                    child: const Text(
                      "Help",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  showSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return GridView(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            children: List.generate(
              7,
              (index) => Column(children: [
                FaIcon(
                  FontAwesomeIcons.solidFolder,
                  color: Colors
                      .primaries[Random().nextInt(Colors.primaries.length)],
                  size: 70,
                ),
                Text(
                  "${name[index]["name"]}",
                  style: TextStyle(fontSize: 25),
                )
              ]),
            ),
          );
        });
  }
}
