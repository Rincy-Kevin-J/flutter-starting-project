import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Practice/watsappcall.dart';

class Drawe extends StatelessWidget {
  var users = [
    {"name": "Add Leads", "icon": Icons.draw},
    {"name": "Points Redemption", "icon": Icons.star_border},
    {"name": "Points", "icon": Icons.add},
    {"name": "Profile", "icon": Icons.person},
    {"name": "Sashboard", "icon": Icons.dashboard},
    {"name": "Home", "icon": Icons.home},
    {"name": "Privacy policy", "icon": Icons.lock},
    {"name": "Contact Us", "icon": Icons.call},
    {"name": "About App", "icon": Icons.settings},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Drawer(
        backgroundColor: Colors.brown.withOpacity(.3),
        child: Column(children: [
          CircleAvatar(
            radius: 60,
            backgroundImage: NetworkImage(
                "https://tse3.mm.bing.net/th?id=OIP.DN_P32n3WLFqwbfYsml3zgHaHR&pid=Api&P=0&h=180"),
          ),
          // Container(
          //   child: Image(
          //       image: NetworkImage(
          //           "https://tse3.mm.bing.net/th?id=OIP.DN_P32n3WLFqwbfYsml3zgHaHR&pid=Api&P=0&h=180")),
          // ),
          Text(
            "Bongani Nikosa",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          Text(
            textAlign: TextAlign.center,
            "Nikolbongani95@gmail.com",
            style: TextStyle(fontSize: 15),
          ),
          SizedBox(
            height: 15,
          ),
          MaterialButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CallScreen()));
            },
            color: Colors.black,
            minWidth: 200,
            shape: StadiumBorder(),
            child: Text(
              "Sign Out",
              style: TextStyle(color: Colors.white70),
            ),
          ),
          ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) => Container(
                  color: Colors.brown[100],
                  child: ListTile(
                    leading: Icon(users[index]['icon'] as IconData?),
                    title: Container(
                      child: Text(
                        "${users[index]['name']}",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ))
              // return null;
              ,
              separatorBuilder: (context, index) {
                if ((index + 1) % 6 == 0) {
                  return const Column(
                    children: [
                      Divider(
                        thickness: 2,
                        height: 5,
                        color: Colors.black,
                      ),
                      ListTile(
                        title: Text(
                          'communication',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  );
                } else {
                  return Container();
                }
              },
              itemCount: users.length),
        ]),
      ),
    );
  }
}
