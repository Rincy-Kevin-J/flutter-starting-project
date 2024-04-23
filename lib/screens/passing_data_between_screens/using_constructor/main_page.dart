import 'package:fltprojeect/screens/passing_data_between_screens/using_constructor/statefull_screen.dart';
import 'package:fltprojeect/screens/passing_data_between_screens/using_constructor/statelessScreen.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  String name = "Tiger";
  String image = "assets/icons/blueberry.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              statelessScreen(name: name, image: image)));
                },
                child: Text("To state less screen")),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              StatefulScreen(name: name, image: image)));
                },
                child: Text("To Statefull Screen"))
          ],
        ),
      ),
    );
  }
}
