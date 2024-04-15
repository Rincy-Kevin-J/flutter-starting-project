
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: GridView1(),debugShowCheckedModeBanner: false,
  ));
}

class GridView1 extends StatelessWidget {
  const GridView1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List"),
      ),
      body: GridView(
        physics: BouncingScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1),
        children: List.generate(
            10,
            (index) => Card(
                  child: Column(
                    children: [
                      Expanded(
                        child: Image.network(
                            "https://tse4.mm.bing.net/th?id=OIP.UcwscVVu-Pi2W3S_7A4R2wAAAA&pid=Api&P=0&h=180"),
                      ),
                      Text("Nike"),
                      Text("\$1200")
                    ],
                  ),
                )),
      ),
    );
  }
}
