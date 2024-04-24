import 'package:fltprojeect/screens/places/model/placehome.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../utils/text-style.dart';

class PlaceDetails extends StatelessWidget {
  late Place place;

  @override
  Widget build(BuildContext context) {
    final index = ModalRoute.of(context)?.settings.arguments as int;
    place = placelist[index];
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('${place.name} Details'),
      // ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                place.image ?? "",
                fit: BoxFit.cover,
                width: 500,
              ),
              Text(place.name ?? "", style: MyTextThemes.textheadingg),
              Text(place.description ?? "", style: MyTextThemes.bodyTextStyle),
              Text(place.visit ?? "", style: TextStyle(fontSize: 20)),
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Flex(
                  direction: Axis.horizontal,
                  children: [
                    Container(
                      child: Image(
                          image: NetworkImage(
                              "https://tse1.mm.bing.net/th?id=OIP.LhvdSvNSpkDqKhUXQOJs3AHaFj&pid=Api&P=0&h=180")),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      child: Image(
                          image: NetworkImage(
                              "https://tse1.mm.bing.net/th?id=OIP.LhvdSvNSpkDqKhUXQOJs3AHaFj&pid=Api&P=0&h=180")),
                    ),
                    SizedBox(
                      height: 17,
                    ),
                    Container(
                      child: Image(
                          image: NetworkImage(
                              "https://tse1.mm.bing.net/th?id=OIP.LhvdSvNSpkDqKhUXQOJs3AHaFj&pid=Api&P=0&h=180")),
                    ),
                  ],
                ),
              ),
              // SingleChildScrollView(
              //   physics: BouncingScrollPhysics(),
              //   scrollDirection: Axis.vertical,
              //   child: Row(
              //     // mainAxisSize: MainAxisSize.min,
              //     children: [
              //       Container(
              //         child: Image(
              //             image: NetworkImage(
              //                 "https://tse1.mm.bing.net/th?id=OIP.LhvdSvNSpkDqKhUXQOJs3AHaFj&pid=Api&P=0&h=180")),
              //       ),
              //       SizedBox(
              //         height: 17,
              //       ),
              //       Container(
              //         child: Image(
              //             image: NetworkImage(
              //                 "https://tse1.mm.bing.net/th?id=OIP.LhvdSvNSpkDqKhUXQOJs3AHaFj&pid=Api&P=0&h=180")),
              //       ),
              //       SizedBox(
              //         height: 17,
              //       ),
              //       Container(
              //         child: Image(
              //             image: NetworkImage(
              //                 "https://tse1.mm.bing.net/th?id=OIP.LhvdSvNSpkDqKhUXQOJs3AHaFj&pid=Api&P=0&h=180")),
              //       ),
              //     ],
              //   ),
              // ),
              MaterialButton(
                  onPressed: () {
                    print("button clicked");
                  },
                  color: Colors.deepPurple,
                  minWidth: 200,
                  shape: StadiumBorder(),
                  child: const Text(
                    "Press to Explore",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
