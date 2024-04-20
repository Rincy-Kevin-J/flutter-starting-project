import 'package:flutter/material.dart';

class Playlist extends StatefulWidget {
  const Playlist({super.key});

  @override
  State<Playlist> createState() => _PlaylistState();
}

class _PlaylistState extends State<Playlist> {
  var playlist = [
    {
      "image":
          "https://tse3.mm.bing.net/th?id=OIP.dQllKPOpHyFEnhh45CYB-AHaHa&pid=Api&P=0&h=180"
    },
    {
      "image":
          "https://tse3.mm.bing.net/th?id=OIP.OrT5gV9rzO-l6gRAz53gTwHaHa&pid=Api&P=0&h=180"
    },
    {
      "image":
          "https://tse3.mm.bing.net/th?id=OIP.-o0JZhrwJnDfiulOqqZAbgHaHa&pid=Api&P=0&h=180"
    },
    {
      "image":
          "https://tse2.mm.bing.net/th?id=OIP.F7umeZD0INtcavsxkhvJIwHaHa&pid=Api&P=0&h=180"
    },
    {
      "image":
          "https://tse4.mm.bing.net/th?id=OIP.2xCbGx220AynmwWlI2eYRQHaHa&pid=Api&P=0&h=180"
    },
    {
      "image":
          "https://tse4.mm.bing.net/th?id=OIP.i1OZqWleeP1DK_VEfxFjEQHaHa&pid=Api&P=0&h=180"
    },
    {
      "image":
          "https://tse3.mm.bing.net/th?id=OIP.s4HrGC2SlsUQvOSMGgXVwgHaHa&pid=Api&P=0&h=180"
    },
    {
      "image":
          "https://tse3.mm.bing.net/th?id=OIP.akYJGngJISTsUn7jZ8VAdgHaHa&pid=Api&P=0&h=180"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
            child: Text(
          "Playlist",
          style: TextStyle(
            fontSize: 30,
            color: Colors.pinkAccent,
          ),
        )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    hintStyle:
                        TextStyle(color: Colors.pinkAccent, fontSize: 20),
                    hintText: "Search Here .... ",
                    suffixIcon: Icon(Icons.search_outlined),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GridView(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                children: List.generate(
                  8,
                  (index) => Card(
                    child: Container(
                      color: Colors.black,
                      child: Column(children: [
                        Image.network(
                          "${playlist[index]["image"]}",
                          fit: BoxFit.fitHeight,
                        ),
                      ]),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
