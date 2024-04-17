import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Stag_Grid_View extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stagered Grid View"),
      ),
      body: StaggeredGrid.count(
        crossAxisCount: 4,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: [
          StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 3,
              child: Card(
                color: Colors.teal,
                child: Center(
                  child: Icon(
                    Icons.home,
                    size: 25,
                  ),
                ),
              )),
          StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: Card(
                color: Colors.teal,
                child: Center(
                  child: Icon(
                    Icons.home,
                    size: 25,
                  ),
                ),
              )),
          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 3,
              child: Card(
                color: Colors.teal,
                child: Center(
                  child: Icon(
                    Icons.home,
                    size: 25,
                  ),
                ),
              )),
          StaggeredGridTile.count(
              crossAxisCellCount: 3,
              mainAxisCellCount: 2,
              child: Card(
                color: Colors.teal,
                child: Center(
                  child: Icon(
                    Icons.home,
                    size: 25,
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
