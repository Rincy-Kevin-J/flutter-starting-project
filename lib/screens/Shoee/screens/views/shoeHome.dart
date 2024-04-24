import 'package:fltprojeect/screens/Shoee/screens/views/shoedetails.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../model/shoeHome.dart';
import '../widgets/shoeView.dart';

void main() {
  runApp(MaterialApp(
    home: ShoeHome(),
    routes: {
      'shoeDetails': (context) => ShoeDetails(),
      'homepage': (context) => ShoeHome(),
    },
  ));
}

class ShoeHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Explore",
          style: GoogleFonts.dekko(fontSize: 30),
        ),
      ),
      body: ListView.builder(
        shrinkWrap: true,
          itemCount: shoelist.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () =>
                  Navigator.pushNamed(context, "shoeDetails", arguments: index),
              child: ShoeView(
                imagepath: shoelist[index].image,
                title: shoelist[index].name,
              ),
            );
          }),
    );
  }
}
