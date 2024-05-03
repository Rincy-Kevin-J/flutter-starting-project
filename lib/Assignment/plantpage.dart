import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      body: Column(
        children: [
          Container(
            height: 400,
            width: 500,
            decoration: BoxDecoration(
              color: Color(0xFF8DECB4),
              image: DecorationImage(
                  image: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwmM7RdbJzSWl443wI9hqmuMhncWgXrNX42F3-XXcYOQ&s')),
            ),
          ),
          Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 32,
              ),
              Text(
                "Filodendro Atom",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: GridView.count(
                  childAspectRatio: 2.5,
                  mainAxisSpacing: 5,
                  crossAxisCount: 2,
                  children: List.generate(
                    4,
                    (index) => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          page[index]["icon"] as IconData?,
                          size: 50,
                        ),
                        Text("${page[index]["name"]}"),
                      ],
                    ),
                  ),
                  shrinkWrap: true,
                ),
              )

            ],
          ),
        ],
      ),
    );
  }
}
