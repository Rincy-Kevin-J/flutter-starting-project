import 'package:fltprojeect/utils/mycolor.dart';
import 'package:fltprojeect/utils/text-style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  var users = [
    {
      "name": "Abhi",
      "phone": 88654346778,
      "pic":
          "https://tse4.mm.bing.net/th?id=OIP.tD1MGBJC9FLrjeXFHshPCwHaHa&pid=Api&P=0&h=180",
      "time": 10.15,
      "unread": 2
    },
    {
      "name": "Amos",
      "phone": 568798989,
      "pic":
          "https://tse4.mm.bing.net/th?id=OIP.tD1MGBJC9FLrjeXFHshPCwHaHa&pid=Api&P=0&h=180",
      "time": 10.15,
      "unread": 2
    },
    {
      "name": "Ammu",
      "phone": 45676788,
      "pic":
          "https://tse4.mm.bing.net/th?id=OIP.tD1MGBJC9FLrjeXFHshPCwHaHa&pid=Api&P=0&h=180",
      "time": 10.15,
      "unread": null
    },
    {
      "name": "Amalu",
      "phone": 568798989,
      "pic":
          "https://tse4.mm.bing.net/th?id=OIP.tD1MGBJC9FLrjeXFHshPCwHaHa&pid=Api&P=0&h=180",
      "time": 10.15,
      "unread": null
    },
    {
      "name": "john",
      "phone": 45676788,
      "pic":
          "https://tse4.mm.bing.net/th?id=OIP.tD1MGBJC9FLrjeXFHshPCwHaHa&pid=Api&P=0&h=180",
      "time": 10.15,
      "unread": 2
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Contacts",
          style: MyTextThemes.textheadingg,
        ),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      // body: ListView(
      //   children: [
      //     Text("DATa 1"),
      //     Text("Data 2"),
      //     Text("data 3"),
      //     Text("data 4"),
      //     Text("DATa 5"),
      //     Text("Data 6"),
      //     Text("data 7"),
      //     Text("data 8"),
      //     Text("data 9"),
      //     Text("data 10"),
      //   ],
      // ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: List.generate(
              users.length,
              (index) => Card(
                    color: Colors.blue,
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: MyColors.iconColors,
                        backgroundImage: NetworkImage("${users[index]['pic']}"),
                      ),
                      // trailing: Wrap(
                      //   direction: Axis.vertical,
                      //   children: [
                      //     Text("${users[index]['time']}"),
                      //     CircleAvatar(
                      //       minRadius: 6,
                      //       maxRadius: 14,
                      //       child: Text("${users[index]["unread"]}"),
                      //     )
                      //   ],
                      // ),
                      trailing: _buildWidget (index),
                      title: Text("${users[index]['name']}"),
                      // title: Text("Data ${index + 1}"),
                      subtitle: Text("56678788"),
                    ),
                  )),
        ),
      ),
    );
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
            child: Text("${users[index]['unread']}"),
          )
        ],
      );
    }
  }
}





