import 'package:fltprojeect/screens/gridview/Gridview5.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Shoes extends StatefulWidget {
  @override
  State<Shoes> createState() => _ShoesState();
}

class _ShoesState extends State<Shoes> {
  var app = [
    {
      "name": "Nike Air Max 90",
      "product": "Women's Shoes-\n Popular",
      "pic":
      "https://tse3.mm.bing.net/th?id=OIP.6SxSSwM8F9UrHOaCHokNQQHaE8&pid=Api&P=0&h=180",
      "price": "\$150",
    },
    {
      "name": "Nike AFI Shadow",
      "product": "Women's Shoes-Just in",
      "pic":
      "https://tse1.mm.bing.net/th?id=OIP.XU430Jrqhlmas-jwSz83owHaE8&pid=Api&P=0&h=180",
      "price": "\$120",
    },
    {
      "name": "Nike Court Legacy",
      "product": "Women's Shoes",
      "pic":
      "https://tse2.mm.bing.net/th?id=OIP.YQU3L3EB27ap_uOKB0pftAHaE8&pid=Api&P=0&h=180",
      "price": "\$150",
    },
    {
      "name": "Nike Court Legacy Next",
      "product": "Women's Shoes",
      "pic":
      "https://tse4.mm.bing.net/th?id=OIP.-WvDEH3LA2HVO49Br7UL1gHaDe&pid=Api&P=0&h=180",
      "price": "\$150",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

          // title: Center(
          //   child: Text(
          //     "All Shoes",
          //     style: TextStyle(fontSize: 25),
          //   ),
          // ),
          // actions: [
          //   Row(
          //     children: [
          //       IconButton(onPressed: () {}, icon: Icon(Icons.search_outlined))
          //     ],
          //   )
          // ]
        ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.black,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search_outlined,
              color: Colors.black,
            ),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border,
              color: Colors.black,
            ),
            label: 'Favourites',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag,
              color: Colors.black,
            ),
            label: 'Bag',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.black,
            ),
            label: 'Profile',
          ),
        ],
        backgroundColor: Color(0xff075E54),
      ),
    body: Padding(
    padding: const EdgeInsets.all(8.0),
    child: GridView(
    gridDelegate:
    SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    shrinkWrap: true,
    children: List.generate(
    4,
    (index) => Card(
    child: Column(
    children: [
    Expanded(child: Image.network("${app[index]["pic"]}")),
    Text(
    "${app[index]["name"]}",
    style: TextStyle(
    fontWeight: FontWeight.bold, fontSize: 20),
    ),
    Text(
    "${app[index]["product"]}",
    style: TextStyle(fontSize: 15),
    ),
      Text(
        "${app[index]["price"]}",
        style: TextStyle(fontSize: 15),
      ),
     ]
    )
    )
    )
    )
    )
    );
  }
}
