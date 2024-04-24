import 'package:fltprojeect/screens/places/screens/widget/placeview.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../model/placehome.dart';

class placeHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Popular",
          style: GoogleFonts.dekko(fontSize: 30),
        ),
      ),
      body: ListView.builder(
        // shrinkWrap: true,
          itemCount: placelist.length,
          itemBuilder: (context, index) {
            return InkWell(
                onTap: () => Navigator.pushNamed(context, "placeDetails",
                    arguments: index),
                child: placeView(
                  imagepath: placelist[index].image,
                  title: placelist[index].name,
                ));
          }),
    );
  }
}
