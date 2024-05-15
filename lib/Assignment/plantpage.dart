import 'package:flutter/material.dart';

class PlantPage extends StatelessWidget {
  var page = [
    {"name": "FREQUENCY \n 1/week", 'icon': Icons.weekend},
    {"name": "WATER \n 250ml", 'icon': Icons.water_drop},
    {"name": "TEMP \n 15-24 C", 'icon': Icons.thermostat},
    {"name": "LiGHT\n Low", 'icon': Icons.sunny},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Container(
        height: 300,
        width: 500,
        decoration: const BoxDecoration(
          color: Color(0xFF8DECB4),
          image: DecorationImage(
              image: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwmM7RdbJzSWl443wI9hqmuMhncWgXrNX42F3-XXcYOQ&s')),
        ),
      ),
      Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(),
          Container(
            color: Color(0xFF8DECB4),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20), topLeft: Radius.circular(20)),
              child: Container(
                // color: Colors.blue,
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                // height: 50,
                // decoration: ShapeDecoration(shape: StadiumBorder()),

                child: const Center(
                  child: Text(
                    "Filodendro Atom",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: GridView.count(
              childAspectRatio: 2.5,
              mainAxisSpacing: 5,
              crossAxisCount: 2,
              shrinkWrap: true,
              children: List.generate(
                4,
                (index) => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      page[index]["icon"] as IconData?,
                      size: 50,
                      color: Color(0xFF9CAFAA),
                    ),
                    Text(
                      "${page[index]["name"]}",
                      style: TextStyle(fontSize: 20, color: Color(0xFF9CAFAA)),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              "The Filodendro 'Atom' is an elegant,\n ever-expanding interior evergreen,\n perfect for creating a beautiful green corner in the house thanks to the wonderful ornamental...",
              style: TextStyle(fontSize: 23, color: Color(0xFF3C5B6F)),
            ),
          ),
          const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text("Read more",
                    style: TextStyle(
                        color: Color(0xFF9AC8CD),
                        fontWeight: FontWeight.bold,
                        fontSize: 24)),
              )),
          const CircleAvatar(
            radius: 50,
            backgroundColor: Color(0xFF9AC8CD),
            child: Icon(
              Icons.water_drop,
              size: 50,
              color: Colors.white,
            ),
          )
        ],
      ),
    ]));
  }
}
