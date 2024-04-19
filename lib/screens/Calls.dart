import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/mycolor.dart';

class Call extends StatelessWidget {
  var calls = [
    {
      "name": "Amos",
      "pic":
      "https://tse4.mm.bing.net/th?id=OIP.tD1MGBJC9FLrjeXFHshPCwHaHa&pid=Api&P=0&h=180",
      "time": "Yesterday,11:54am",
    },
    {
      "name": "Siva",
      "pic":
      "https://tse4.mm.bing.net/th?id=OIP.tD1MGBJC9FLrjeXFHshPCwHaHa&pid=Api&P=0&h=180",
      "time": "Yesterday 9:12pm",
    },
    {
      "name": "Koraghan",
      "msg": "Silenced by Do Not Disturb",
      "pic":
      "https://tse4.mm.bing.net/th?id=OIP.tD1MGBJC9FLrjeXFHshPCwHaHa&pid=Api&P=0&h=180",
      "time": "today 8:02am",
    },
    {
      "name": "Stephy",
      "pic":
      "https://tse4.mm.bing.net/th?id=OIP.tD1MGBJC9FLrjeXFHshPCwHaHa&pid=Api&P=0&h=180",
      "time": "Yesterday 8:02pm",
    },
    {
      "name": "Amaluz",
      "pic":
      "https://tse4.mm.bing.net/th?id=OIP.tD1MGBJC9FLrjeXFHshPCwHaHa&pid=Api&P=0&h=180",
      "time": "Yesterday 9:17pm",
    },
    {
      "name": "Sajan",
      "pic":
      "https://tse4.mm.bing.net/th?id=OIP.tD1MGBJC9FLrjeXFHshPCwHaHa&pid=Api&P=0&h=180",
      "time": "Yesterday 12:28am",
    },
    {
      "name": "Jobin(2)",
      "pic":
      "https://tse4.mm.bing.net/th?id=OIP.tD1MGBJC9FLrjeXFHshPCwHaHa&pid=Api&P=0&h=180",
      "time": "Yesterday 4:00pm",
    },
    {
      "name": "Sajan",
      "pic":
      "https://tse4.mm.bing.net/th?id=OIP.tD1MGBJC9FLrjeXFHshPCwHaHa&pid=Api&P=0&h=180",
      "time": "Yesterday 12:28am",
    },
    {
      "name": "Jobin(2)",
      "pic":
      "https://tse4.mm.bing.net/th?id=OIP.tD1MGBJC9FLrjeXFHshPCwHaHa&pid=Api&P=0&h=180",
      "time": "Yesterday 4:00pm",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("Calls",
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 30, color: Colors.white)),
        actions: [
          Row(
            children: [

              IconButton(onPressed: () {}, icon: Icon(Icons.search_outlined))
            ],
          ),
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                PopupMenuItem(child: Text("Clear call log")),
                PopupMenuItem(child: Text("Settings")),
              ];
            },
          )
        ],
        backgroundColor: Colors.teal,
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.black,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat,
              color: Colors.black,
            ),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.update,
              color: Colors.black,
            ),
            label: 'Updates',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.groups,
              color: Colors.black,
            ),
            label: 'Communities',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.call,
              color: Colors.black,
            ),
            label: 'Calls',
          )
        ],
        backgroundColor: Color(0xff075E54),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: Text(
                "Create call link ",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
              ),
              leading: CircleAvatar(
                backgroundColor: Colors.teal,
                child: Icon(Icons.link_outlined),
              ),
              subtitle: Text(
                "Share a text for your watsapp call",
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.all(12.0),
              child: Align(
                child: Text(
                  "Recent",
                  style: TextStyle(fontSize: 18),
                ),
                alignment: Alignment.bottomLeft,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(12),
              child: Container(
                child: ListView(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: List.generate(
                      calls.length,
                          (index) => Card(
                        color: Colors.white,
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: MyColors.iconColors,
                            backgroundImage:
                            NetworkImage('${calls[index]['pic']}}'),
                          ),
                          trailing: Icon(Icons.call),
                          title: Text(
                            "${calls[index]['name']}",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 23),
                          ),
                          subtitle: Text(
                            "${calls[index]['time']}",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
