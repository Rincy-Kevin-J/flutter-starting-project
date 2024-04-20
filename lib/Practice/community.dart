import 'package:fltprojeect/Practice/watsappcall.dart';
import 'package:flutter/material.dart';

class Community extends StatefulWidget {
  @override
  State<Community> createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Communities",
            style: TextStyle(fontSize: 25, color: Colors.black),
          ),
          actions: [Row(
            children: [
              Icon(Icons.linked_camera_outlined),
              PopupMenuButton(itemBuilder: (context) {
                return[
                  PopupMenuItem(child: Text("Settings"))
                ];
              },)
            ],
          )],
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Column(
              children: [
                Container(
                  child: Image(image: NetworkImage("https://tse1.mm.bing.net/th?id=OIP.omf1qVK2iOVc1Uchy9V-_wAAAA&pid=Api&P=0&h=180")),
                  // decoration: BoxDecoration(
                  //     image: DecorationImage(
                  //         image: NetworkImage(
                  //             "https://tse1.mm.bing.net/th?id=OIP.omf1qVK2iOVc1Uchy9V-_wAAAA&pid=Api&P=0&h=180"))),
                ),
                Text(
                  "Stay connected with a community",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                Text(textAlign: TextAlign.center,
                  "Communities being in members together in topic-based groups, and make it easy to get admin announcements.,Any community you're added to will appear here",
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(
                  height: 15,
                ),
                Text("See Example Communities >",style: TextStyle(color: Colors.green[200]),),
                SizedBox(
                  height: 25,
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CallScreen()));
                  },
                  color: Colors.green,
                  minWidth: 200,
                  shape: StadiumBorder(),
                  child: Text(
                    "Start your community",
                    style: TextStyle( color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
