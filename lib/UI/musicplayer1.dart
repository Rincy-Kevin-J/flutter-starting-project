import 'package:carousel_slider/carousel_slider.dart';
import 'package:fltprojeect/UI/Home.dart';
import 'package:fltprojeect/UI/Playlist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/mycolor.dart';
import 'More.dart';
import 'Search.dart';

class MusicPlayer extends StatefulWidget {
  @override
  State<MusicPlayer> createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  var playlist = [
    {
      "song": "Hero",
      "artist": "Taylor Swift",
      "pic":
          "https://tse3.explicit.bing.net/th?id=OIP.li8e-oNdw8vSLpNG2IWU-wHaGZ&pid=Api&P=0&h=180"
    },
    {
      "song": "Unholy",
      "artist": "Sam Smith,Kim Petras",
      "pic":
          "https://tse4.mm.bing.net/th?id=OIP.RwpGwojbO0ezCo_QsyeLCwAAAA&pid=Api&P=0&h=180"
    },
    {
      "song": "Lift me up",
      "artist": "Rihanna",
      "pic":
          "https://tse4.explicit.bing.net/th?id=OIP.DHNYykmhjdK5KdwKzxQ7OgHaHa&pid=Api&P=0&h=180"
    },
    {
      "song": "Depression",
      "artist": "Dax",
      "pic":
          "https://tse3.mm.bing.net/th?id=OIP.impuKeM1IuyZC9aTz43onQHaHa&pid=Api&P=0&h=180"
    },
    {
      "song": "I'm good",
      "artist": "David Guetta and Bebe Rexha",
      "pic":
          "https://tse3.mm.bing.net/th?id=OIP.3O5aUY6D3DQdWK1QMlPUEQHaHa&pid=Api&P=0&h=180"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Musify",
          style: TextStyle(color: Colors.pinkAccent, fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 5),
              child: Text("Suggested Playlist",
                  style: TextStyle(color: Colors.pinkAccent, fontSize: 20)),
            ),
          ),
          CarouselSlider(
            items: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1487180144351-b8472da7d491?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fG11c2ljfGVufDB8fDB8fHww")),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1487180144351-b8472da7d491?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fG11c2ljfGVufDB8fDB8fHww")),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1493225457124-a3eb161ffa5f?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8bXVzaWN8ZW58MHx8MHx8fDA%3D")),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1483412033650-1015ddeb83d1?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fG11c2ljfGVufDB8fDB8fHww")),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1603190287605-e6ade32fa852?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fG11c2ljJTIwZmVzdGl2YWx8ZW58MHx8MHx8fDA%3D")),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://plus.unsplash.com/premium_photo-1664303674394-157511e7085d?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8bXVzaWMlMjBmZXN0aXZhbHxlbnwwfHwwfHx8MA%3D%3D")),
                ),
              ),
            ],
            options: CarouselOptions(
              height: 300,
              aspectRatio: 16 / 9,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              enlargeFactor: 0.3,
              scrollDirection: Axis.horizontal,
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.only(left:20,bottom: 5 ),
              child: Text(
                "Recommended For You",
                style: TextStyle(color: Colors.pinkAccent, fontSize: 20),
              ),
            ),
          ),
          ListView(
            shrinkWrap: true,
            children: List.generate(
                playlist.length,
                (index) => Card(
                      child: Container(
                        color: Colors.black,
                        child: ListTile(
                          leading: Image.network("${playlist[index]['pic']}"),
                          title: Text(
                            "${playlist[index]['song']}",
                            style: TextStyle(
                                color: Colors.pinkAccent, fontSize: 22),
                          ),
                          subtitle: Text(
                            "${playlist[index]['artist']}",
                            style: TextStyle(color: Colors.grey),
                          ),
                          trailing: Wrap(
                            children: [
                              Icon(
                                Icons.star_border,
                                color: Colors.white,
                              ),
                              Icon(
                                Icons.download,
                                color: Colors.white,
                              )
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
