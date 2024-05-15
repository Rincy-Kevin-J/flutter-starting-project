import 'package:flutter/material.dart';

import '../utils/mycolor.dart';

class Status extends StatefulWidget {
  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  var dp = [
    {
      "name": "Amos",
      "pic":
          "https://tse4.mm.bing.net/th?id=OIP.tD1MGBJC9FLrjeXFHshPCwHaHa&pid=Api&P=0&h=180",
    },
    {
      "name": "Siva",
      "pic":
          "https://tse4.mm.bing.net/th?id=OIP.tD1MGBJC9FLrjeXFHshPCwHaHa&pid=Api&P=0&h=180",
    },
    {
      "name": "Koraghan",
      "pic":
          "https://tse4.mm.bing.net/th?id=OIP.tD1MGBJC9FLrjeXFHshPCwHaHa&pid=Api&P=0&h=180",
    },
    {
      "name": "Stephy",
      "pic":
          "https://tse4.mm.bing.net/th?id=OIP.tD1MGBJC9FLrjeXFHshPCwHaHa&pid=Api&P=0&h=180",
    },
    {
      "name": "Amaluz",
      "pic":
          "https://tse4.mm.bing.net/th?id=OIP.tD1MGBJC9FLrjeXFHshPCwHaHa&pid=Api&P=0&h=180",
    },
    {
      "name": "Sajan",
      "pic":
          "https://tse4.mm.bing.net/th?id=OIP.tD1MGBJC9FLrjeXFHshPCwHaHa&pid=Api&P=0&h=180",
    },
    {
      "name": "Jobin",
      "pic":
          "https://tse4.mm.bing.net/th?id=OIP.tD1MGBJC9FLrjeXFHshPCwHaHa&pid=Api&P=0&h=180",
    },
    {
      "name": "Amma",
      "pic":
          "https://tse4.mm.bing.net/th?id=OIP.tD1MGBJC9FLrjeXFHshPCwHaHa&pid=Api&P=0&h=180",
    },
    {
      "name": "Joel",
      "pic":
          "https://tse4.mm.bing.net/th?id=OIP.tD1MGBJC9FLrjeXFHshPCwHaHa&pid=Api&P=0&h=180",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Updates",
            style: TextStyle(fontSize: 25, color: Colors.black),
          ),
          actions: [
            Row(
              children: [
                const Icon(Icons.camera_alt_outlined),
                const Icon(Icons.search_outlined),
                PopupMenuButton(
                  itemBuilder: (context) {
                    return [const PopupMenuItem(child: Text("Settings"))];
                  },
                )
              ],
            ),
          ],
        ),
        body: Column(children: [
          Row(
            children: [
              const Text(
                "Status",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              PopupMenuButton(
                itemBuilder: (context) {
                  return [PopupMenuItem(child: Text("Status privacy"))];
                },
              )
            ],
          ),
          const CircleAvatar(
            child: Image(image: NetworkImage("https://tse4.mm.bing.net/th?id=OIP.tD1MGBJC9FLrjeXFHshPCwHaHa&pid=Api&P=0&h=180")),

          ),
          const Text("My Status",style: TextStyle(fontSize: 20,color: Colors.black),),
          SizedBox(
            height: 15,
          ),
          const Text("Tap to add whatsapp update"),

          ListView(
            children: List.generate(
                dp.length,
                (index) => Card(
                      color: Colors.white,
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: MyColors.iconColors,
                          backgroundImage: NetworkImage("${dp[index]['pic']}"),
                        ),
                        title: Text(
                          "${dp[index]['name']}",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 23),
                        ),

                      ),
                    )
            ),
          ),
        ]));
  }
}
