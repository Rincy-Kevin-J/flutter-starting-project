import 'package:flutter/material.dart';

import '../utils/mycolor.dart';

class ChatScreen extends StatelessWidget {
  var users = [
    {
      "name": "Amos",
      "msg": "Class kazhinjo",
      "pic":
          "https://tse4.mm.bing.net/th?id=OIP.tD1MGBJC9FLrjeXFHshPCwHaHa&pid=Api&P=0&h=180",
      "time": "11:54am",
      "unread": 3
    },
    {
      "name": "Siva",
      "msg": "Venda kitty",
      "pic":
          "https://tse4.mm.bing.net/th?id=OIP.tD1MGBJC9FLrjeXFHshPCwHaHa&pid=Api&P=0&h=180",
      "time": "8:02pm",
      "unread": null
    },
    {
      "name": "Koraghan",
      "msg": "Mrng",
      "pic":
          "https://tse4.mm.bing.net/th?id=OIP.tD1MGBJC9FLrjeXFHshPCwHaHa&pid=Api&P=0&h=180",
      "time": "8:02am",
      "unread": null
    },
    {
      "name": "Stephy",
      "msg": " kitty",
      "pic":
          "https://tse4.mm.bing.net/th?id=OIP.tD1MGBJC9FLrjeXFHshPCwHaHa&pid=Api&P=0&h=180",
      "time": "8:02pm",
      "unread": 2
    },
    {
      "name": "Amaluz",
      "msg": " Evdaaa",
      "pic":
          "https://tse4.mm.bing.net/th?id=OIP.tD1MGBJC9FLrjeXFHshPCwHaHa&pid=Api&P=0&h=180",
      "time": "9:17pm",
      "unread": null
    },
    {
      "name": "Sajan",
      "msg": " bye",
      "pic":
          "https://tse4.mm.bing.net/th?id=OIP.tD1MGBJC9FLrjeXFHshPCwHaHa&pid=Api&P=0&h=180",
      "time": "12:28am",
      "unread": null
    },
    {
      "name": "Jobin",
      "msg": " haaa",
      "pic":
          "https://tse4.mm.bing.net/th?id=OIP.tD1MGBJC9FLrjeXFHshPCwHaHa&pid=Api&P=0&h=180",
      "time": "1:00pm",
      "unread": 4
    },
    {
      "name": "Amma",
      "msg": "Mwoleee",
      "pic":
          "https://tse4.mm.bing.net/th?id=OIP.tD1MGBJC9FLrjeXFHshPCwHaHa&pid=Api&P=0&h=180",
      "time": "6:00am",
      "unread": 6
    },
    {
      "name": "Joel",
      "msg": "Hlooo",
      "pic":
          "https://tse4.mm.bing.net/th?id=OIP.tD1MGBJC9FLrjeXFHshPCwHaHa&pid=Api&P=0&h=180",
      "time": "9:00am",
      "unread": 4
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("WhatsApp",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 30, color: Colors.white)),
          actions: [
            Row(
              children: [
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),
                SizedBox(
                  width: 15,
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.search_outlined))
              ],
            ),
            // CircleAvatar(
            //   backgroundColor: Color(0x075E54),
            //   child: Icon(Icons.camera_alt_outlined),
            // ),
            PopupMenuButton(
              itemBuilder: (context) {
                return [
                  PopupMenuItem(child: Text("New group")),
                  const PopupMenuItem(child: Text("New broadcast")),
                  PopupMenuItem(child: Text("Linked device")),
                  PopupMenuItem(child: Text("Started Device")),
                  PopupMenuItem(child: Text("Payments")),
                  PopupMenuItem(child: Text("Settings")),
                ];
              },
            )
          ],
          backgroundColor: Color(0xff075E54),
          // backgroundColor:Colors.teal,
        ),
        // bottomNavigationBar: BottomNavigationBar(
        //  selectedItemColor: Colors.black,
        //   unselectedItemColor: Colors.black,
        //   showUnselectedLabels: true,
        //
        //   items: [
        //     BottomNavigationBarItem(
        //         icon: Icon(
        //           Icons.chat,
        //           color: Colors.black,
        //         ),
        //         label: 'Chat'),
        //     BottomNavigationBarItem(
        //       icon: Icon(
        //         Icons.update,
        //         color: Colors.black,
        //       ),
        //       label: 'Updates',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(
        //         Icons.groups,
        //         color: Colors.black,
        //       ),
        //       label: 'Communities',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(
        //         Icons.call,
        //         color: Colors.black,
        //       ),
        //       label: 'Calls',
        //     )
        //   ],
        // ),
        body: Padding(
          padding: EdgeInsets.all(12.0),
          child: ListView(
            children: List.generate(
                users.length,
                (index) => Card(
                    color: Colors.white,
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: MyColors.iconColors,
                        backgroundImage: NetworkImage("${users[index]['pic']}"),
                      ),
                      trailing: _buildWidget(index),
                      title: Text(
                        "${users[index]['name']}",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 23),
                      ),
                      subtitle: Text(
                        "${users[index]['msg']}",
                        style: TextStyle(fontSize: 20),
                      ),
                    ))),
          ),
        ));
  }

  Widget _buildWidget(int index) {
    if (users[index]['unread'] == null) {
      return Text("${users[index]['time']}");
    } else {
      return Wrap(
        direction: Axis.vertical,
        children: [
          Text("${users[index]['time']}"),
          CircleAvatar(
            minRadius: 6,
            maxRadius: 14,
            backgroundColor: Colors.green,
            child: Text(
              "${users[index]['unread']}",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          )
        ],
      );
    }
  }
}
