import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: GridView2(),
  ));
}

// class GridView2 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: GridView.builder(
//         shrinkWrap: true,
//         itemCount: 20,
//         gridDelegate:
//             SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 50),
//         itemBuilder: (context, index) {
//           return Card(
//             child: ListTile(
//               leading: Icon(Icons.person, size: 30),
//               title: Text("Friends"),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
class GridView2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hi"),

      ),
      body: GridView.builder(
          itemCount: 20,
          gridDelegate:  SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 110),
          itemBuilder: (context, index) {
            return  Card(
              child: ListTile(
                leading: Icon(
                  Icons.person,
                  size: 30,
                ),
                title: Text("My Friend"),
              ),
            );
          }),
    );
  }
}
