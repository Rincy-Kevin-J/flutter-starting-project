import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

import '../utils/text-style.dart';

void main() {
  runApp(MaterialApp(
    home: AssgnGrid(),
    debugShowCheckedModeBanner: false,
  ));
}

class AssgnGrid extends StatelessWidget {
  var places = [
    {
      "name": "USA",
      "image":
          "https://tse4.mm.bing.net/th?id=OIP.uXucSl_iK28hLqjWfbpNGQHaE8&pid=Api&P=0&h=180"
    },
    {
      "name": "England",
      "image":
          "https://tse3.mm.bing.net/th?id=OIP.F8IiRduy8_fFXpdEAcuObgHaEK&pid=Api&P=0&h=180"
    },
    {
      "name": "France",
      "image":
          "https://tse2.mm.bing.net/th?id=OIP.aJZPTkbAjyRvX_P1ohWbnAHaE8&pid=Api&P=0&h=180"
    },
    {
      "name": "Russia",
      "image":
          "https://tse1.mm.bing.net/th?id=OIP.6pW9wx97K1ioaCRz4fjIKgAAAA&pid=Api&P=0&h=180"
    },
    {
      "name": "Canada",
      "image":
          "https://tse3.mm.bing.net/th?id=OIP.i_xh4nePeo5OBq6qUsmO3gHaEo&pid=Api&P=0&h=180"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "Grid View",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: GridView(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            children: List.generate(
              5,
              (index) => Card(
                child: Column(
                  children: [
                    Stack(children: [
                      Image.network(
                        "${places[index]["image"]}",
                        fit: BoxFit.fitHeight,
                      ),
                      Positioned(
                        bottom: 5,
                        left: 10,
                        child: Text(
                          "${places[index]["name"]}",
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
            )));
  }
}
