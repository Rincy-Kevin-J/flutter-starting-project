import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderC extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Carousal Slider"),
      ),
      body: CarouselSlider(items: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1446071103084-c257b5f70672?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8cGxhbnRzfGVufDB8fDB8fHww")),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1506634064465-7dab4de896ed?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8cGxhbnRzfGVufDB8fDB8fHww")),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://tse1.mm.bing.net/th?id=OIP.8eJNMEsDP4uYuV4dl--i9gHaE8&pid=Api&P=0&h=180")),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://plus.unsplash.com/premium_photo-1664283661240-f2401675c6b9?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cGxhbnRzfGVufDB8fDB8fHww")),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1518531933037-91b2f5f229cc?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGxhbnRzfGVufDB8fDB8fHww")),
          ),
        ),
      ], options:
      CarouselOptions(
        height: 400,
        aspectRatio: 16/9,
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
      )
      )
      );
  }
}
