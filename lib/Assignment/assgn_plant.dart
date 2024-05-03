import 'dart:math';

import 'package:fltprojeect/Assignment/plantpage.dart';
import 'package:flutter/material.dart';

class PlantLogin extends StatelessWidget {
  var lists = [
    {
      "name": "Filodendro \n Atom",
      "pic":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwmM7RdbJzSWl443wI9hqmuMhncWgXrNX42F3-XXcYOQ&s",
      "quantity": "250 ml"
    },
    {
      "name": "Monstera \n Deliciosa",
      "pic":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwmM7RdbJzSWl443wI9hqmuMhncWgXrNX42F3-XXcYOQ&s",
      "quantity": "500 ml"
    },
    {
      "name": "Chrophythum ",
      "pic":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwmM7RdbJzSWl443wI9hqmuMhncWgXrNX42F3-XXcYOQ&s",
      "quantity": "500 ml"
    },
    {
      "name": "Kentiapalm",
      "pic":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwmM7RdbJzSWl443wI9hqmuMhncWgXrNX42F3-XXcYOQ&s",
      "quantity": "250 ml"
    },
    {
      "name": "Peperomia\n Obtusifula",
      "pic":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwmM7RdbJzSWl443wI9hqmuMhncWgXrNX42F3-XXcYOQ&s",
      "quantity": "250 ml"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // toolbarHeight: 110,
        leading: Column(
          children: [
            Icon(
              Icons.settings,
              size: 35,
            ),
          ],
        ),
        // title:
        // ),
        actions: [
          Padding(
            padding: EdgeInsets.all(15.0),
            child: CircleAvatar(
              child: Icon(
                Icons.add,
                size: 35,
              ),
            ),
          )
        ],
      ),
      // Align(
      //   alignment: Alignment.bottomLeft,
      //   child: Text(
      //     "Water Today",
      //     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
      //   ),
      // ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Water Today",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) => Card(
                      color: Colors
                          .primaries[Random().nextInt(Colors.primaries.length)],
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => PlantPage(),
                          ));
                        },
                        child: ListTile(
                          leading: Container(
                            // height: 200,

                            child: Image.network("${lists[index]['pic']}"),
                          ),
                          // leading:  CircleAvatar(
                          // backgroundColor: MyColors.iconColors,
                          // backgroundImage: NetworkImage("${lists[index]['pic']}"
                          //     ),
                          // ),
                          trailing: Icon(
                            Icons.water_drop,
                            color: Colors.white,
                            // size: 50,
                          ),

                          title: Text(
                            "${lists[index]['name']}",
                          ),
                          // style: GoogleFonts.abel(fontSize: 40)),

                          subtitle: Row(
                            children: [
                              Icon(
                                Icons.water_drop,
                                color: Colors.white,
                              ),
                              Text(
                                "${lists[index]['quantity']}",
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ))
                  // return null;
                  ,
                  separatorBuilder: (context, index) {
                    if ((index + 1) % 4 == 0) {
                      return Text(
                        'Fri,February 7',
                        style: TextStyle(fontSize: 30),
                      );
                    } else {
                      return Container();
                    }
                  },
                  itemCount: lists.length),
            ),
          ],
        ),
      ),
    );
  }
}
