import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../widget/product_widget.dart';

class Reader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: StaggeredGrid.count(
        crossAxisCount: 2,
        children: [
          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1.5,
              child: ProductTile(
                color: Colors.grey,
                image: "assets/images/quiz.png",
                title: "Mysteries of Universe",
                desc: "20 June 2013\n Carl Sagan",
                click: () {},
              )),
          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 2.7,
              child: ProductTile(
                color: Colors.grey,
                image: "assets/images/img_1.png",
                title: "An Empire State of",
                desc: "19 June 2013\n Ernest Hemingway",
                click: () {},
              )),
          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1.5,
              child: ProductTile(
                color: Colors.grey,
                image: "assets/images/img_4.png",
                title: "10 Tips for Hipster T",
                desc: "10 May  2013\n Vincent Vang Gogh",
                click: () {},
              )),

          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 2.6,
              child: ProductTile(
                color: Colors.grey,
                image: "assets/images/img_3.png",
                title: "My Story of Climbing",
                desc: "1o May 2013\n Ernest Hemingway",
                click: () {},
              )),
          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 3,
              child: ProductTile(
                color: Colors.grey,
                image: "assets/images/img_5.png",
                title: "An Empire State of",
                desc: "19 June 2013\n Ernest Hemingway",
                click: () {},
              )),
        ],
      )),
    );
  }
}
