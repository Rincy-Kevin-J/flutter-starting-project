import 'package:flutter/material.dart';

class DrawerEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.lightBlue),
        title: Text("Drawer Ex"),
      ),
      drawer: Drawer(
        backgroundColor: Colors.black.withOpacity(.3),
        // data: Theme.of(context).copyWith(canvasColor:Colors.transparent),
          child: ListView(
            children: [
              const UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Colors.purple,
                  Colors.pinkAccent,
                  Colors.black
                ])),
                accountName: Text("Rincy_John"),
                accountEmail: Text("rincykevin845@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://tse3.mm.bing.net/th?id=OIP.DN_P32n3WLFqwbfYsml3zgHaHR&pid=Api&P=0&h=180"),
                ),
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://tse1.mm.bing.net/th?id=OIP.VTBzGQySOYLDke_xg2OfEQHaFj&pid=Api&P=0&h=180"),
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://tse4.mm.bing.net/th?id=OIP.UzuYMXdB3DPUnPOewhakCwHaFe&pid=Api&P=0&h=180"),
                  ),
                ],
              ),
              listItems(),
            ],
          ),
        ),
      );
  }

  Widget listItems() {
    return Column(
        children: List.generate(
            5,
            (index) => const ListTile(
                  leading: Icon(Icons.home),

                  title: Text("Home"),
                )));
  }
}
