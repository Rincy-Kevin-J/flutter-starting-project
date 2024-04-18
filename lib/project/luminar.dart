import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Luminar extends StatelessWidget {
  const Luminar({super.key});

  @override
  Widget build(BuildContext context) {
    var list=[
      {
      "name":"MEA(R)N STACK",
      "duration":"6 months",
      "course fee":40000
    },
      {
        "name":"MEA(R)N STACK",
        "duration":"6 months",
        "course fee":40000
      },
      {
        "name":"MEA(R)N STACK",
        "duration":"6 months",
        "course fee":40000
      },
      {
        "name":"MEA(R)N STACK",
        "duration":"6 months",
        "course fee":40000
      },
      {
        "name":"MEA(R)N STACK",
        "duration":"6 months",
        "course fee":40000
      },

    ];
    return Scaffold(
      drawer: SizedBox(
        height: 10,
      ),
      appBar: AppBar(
        leading: Icon(Icons.menu),
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/Luminar.png")),

            ),


          ),
          Text("Courses",style: TextStyle(fontSize: 25),),
          ListView(
            shrinkWrap: true,
            children: List.generate(
                list.length,
                    (index) => Card(
                  child: Container(
                    color: Colors.black,
                    child: ListTile(
                      title: Text(
                        "${list[index]['name']}",
                        style: TextStyle(
                            color: Colors.pinkAccent, fontSize: 22),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text(
                            "${list[index]['duration']}",
                            style: TextStyle(color: Colors.grey),
                          ),Text(
                            "${list[index]['course fee']}",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                      trailing: Wrap(
                        children: [
                          Icon(
                            Icons.star_border,
                            color: Colors.white,
                          ),

                        ],
                      ),
                    ),
                  ),
                )),
          )
        ],


      ),

    );
  }
}
