import 'package:fltprojeect/widget/product_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class OilProduct extends StatelessWidget {
  const OilProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: StaggeredGrid.count(
        crossAxisCount: 4,
        children: [
          StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 4,
              child: ProductTile(
                color: Colors.grey,
                image: "assets/icons/blueberry.png",
                title: "Berry",
                desc: "Berry is a super tasty fruit",
                price: 120,
                click: () {},
              )),
          StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 4,
              child: ProductTile(
                color: Colors.grey,
                image: "assets/icons/blueberry.png",
                title: "Berry",
                desc: "berry is a super tasty fruit",
                price: 120,
                click: () {},
              )),
        ],
      )),
    );
  }
}
