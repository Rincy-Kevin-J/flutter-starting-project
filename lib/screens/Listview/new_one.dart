import 'package:flutter/material.dart';
/*
void main() {
  runApp(MaterialApp(
    home: GridView2(),
  ));
}

class GridView2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        shrinkWrap: true,
        itemCount: 20,
        gridDelegate:
            SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 50),
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Icon(Icons.person, size: 30),
              title: Text("Friends"),
            ),
          );
        },
      ),
    );
  }
}
*/
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: GridView2(),
  ));
}

class GridView2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView Example'),
      ),
      body: MyGridView(),
    );
  }
}

class MyGridView extends StatelessWidget {
  final List<String> items = List.generate(20, (index) => 'Item $index');

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 50,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Icon(Icons.person, size: 30),
              title: Text(items[index]),
            ),
          );
        },
      ),
    );
  }
}
