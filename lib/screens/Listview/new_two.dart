import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('GridView Example'),
        ),
        body: MyGridView(),
      ),
    );
  }
}

class MyGridView extends StatelessWidget {
  final List<String> items = List.generate(20, (index) => 'Item $index');

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Number of columns
        mainAxisSpacing: 8.0, // Vertical spacing between items
        crossAxisSpacing: 8.0, // Horizontal spacing between items
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Container(
          color: Colors.blue,
          alignment: Alignment.center,
          child: Text(
            items[index],
            style: TextStyle(color: Colors.white),
          ),
        );
      },
    );
  }
}
