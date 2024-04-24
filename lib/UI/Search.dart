import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Now Playing", style: TextStyle(color: Colors.pinkAccent)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Image(
                height: 400,
                fit: BoxFit.fill,
                image: NetworkImage(
                    "https://tse3.mm.bing.net/th?id=OIP.VSLzeqiR0ji_NfLCVTTi9wHaHa&pid=Api&P=0&h=180")),
            Text(
              "Flowers",
              style: TextStyle(color: Colors.pinkAccent, fontSize: 25),
            ),
            Text(
              "Miley Cyrus",
              style: TextStyle(fontSize: 17),
            ),
            SizedBox(
              height: 17,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("0:00"),
                Icon(Icons.shuffle),
                Icon(Icons.repeat),
                Text("0:00")
              ],
            ),
            // SliderTheme(
            //   data: SliderTheme.of(context).copyWith(
            //       thumbShape: RoundSliderThumbShape(enabledThumbRadius: 0)),
            Slider(
                min: 0,
                max: 100,
                value: 50,
                activeColor: Colors.green,
                onChanged: (value) {}),

            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      FaIcon(
                        Icons.download,size: 30,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      FaIcon(Icons.volume_off,size: 30,),
                    ],
                  ),
                ),
                FaIcon(
                  Icons.skip_previous,
                  size: 65,
                ),
                FaIcon(
                  Icons.pause_circle,
                  size: 65,
                ),
                FaIcon(
                  Icons.skip_next,
                  size: 65,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      FaIcon(Icons.star,size: 30,),
                      SizedBox(
                        height: 20,
                      ),
                      FaIcon(Icons.queue_music_sharp,size: 30,)
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
