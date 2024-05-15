import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'luminar.dart';

class Firstlearn extends StatefulWidget {
  @override
  State<Firstlearn> createState() => _FirstState();
}

class _FirstState extends State<Firstlearn> {
  var learn = [
    {
      "Institute": "Luminar",
      "pic": "assets/images/Brototype.png",
      "Navigation": const Luminar()
    },
    {
      "Institute": "Luminar",
      "pic": "assets/images/Luminar.png",
      "Navigation": const Luminar()
    },
    {
      "Institute": "Luminar",
      "pic": "assets/images/StackUp.png",
      "Navigation": const Luminar()
    },
    {
      "Institute": "Luminar",
      "pic": "assets/images/Brototype.png",
      "Navigation": const Luminar()
    },
    {
      "Institute": "Luminar",
      "pic": "assets/images/Brototype.png",
      "Navigation": const Luminar()
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text(
            "Find Your Favourite Courses",
            style: TextStyle(fontSize: 25, color: Color(0xFF6C22A6)),
          ),
          actions: const [
            Row(
              children: [
                Icon(
                  Icons.search_outlined,
                  size: 30,
                )
              ],
            )
          ],
        ),
        body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              child: Column(children: [
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Hey Users....",
                        style:
                            TextStyle(fontSize: 25, color: Color(0xFFD20062)),
                      )),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20, bottom: 5),
                    child: Text("Offers",
                        style: TextStyle(color: Colors.purple, fontSize: 20)),
                  ),
                ),
                CarouselSlider(
                  items: [
                    Container(
                      color: Colors.black,
                    ),
                    Container(
                      color: Colors.blue,
                    ),
                    Container(
                      color: Colors.red,
                    ),
                    Container(
                      color: Colors.grey,
                    ),
                    Container(
                      color: Colors.green,
                    ),
                    Container(
                      color: Colors.purple,
                    )
                  ],
                  options: CarouselOptions(
                    height: 250,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.8,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlayAnimationDuration: const Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.3,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GridView(
                    physics: const NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.all(10),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    shrinkWrap: true,
                    children: List.generate(
                      5,
                      (index) => Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const Luminar()));

                            // Navigator.of(context).push(MaterialPageRoute(
                            //     builder: (context) => );
                          },
                          child: Card(
                            child: Column(
                              children: [
                                Expanded(
                                    child:
                                        Image.asset("${learn[index]["pic"]}")),
                                Text(
                                  "${learn[index]["Institute"]}",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                const Icon(CupertinoIcons.heart)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ))
              ]),
            )));
  }
}
