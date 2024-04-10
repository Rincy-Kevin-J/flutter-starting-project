import 'dart:math';
import 'dart:ui';

import 'package:fltprojeect/model/productModel.dart';
import 'package:fltprojeect/utils/mycolor.dart';
import 'package:fltprojeect/utils/text-style.dart';
import 'package:flutter/material.dart';

class ListView_seperated extends StatelessWidget {
  var datas = [
    data(
        name: "Apple",
        details: "https://cdn-icons-png.flaticon.com/128/3075/3075977.png",
        image: "assets/icons/apple.png",
        price: 250),
    data(
        name: "Orange",
        details: "vghjdklekeklklekledbhdjkldkldl",
        image: "assets/icons/orange.png",
        price: 250),
    data(
        name: "Avacado",
        details: "vghjdklekeklklekledhkjdl",
        image: "assets/icons/avacado.png",
        price: 250),
    data(
        name: "Cherry",
        details: "vghjdklekeklkleklefnnff",
        image: "assets/icons/cherry.png",
        price: 250),
    data(
        name: "Blueberry",
        details: "vghjdklekeklkleklehgjdjd",
        image: "assets/icons/blueberry.png",
        price: 250),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View 3"),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.blue[300],
            child: Icon(Icons.add),
          ),
          PopupMenuButton(itemBuilder: (context) {
            return [
              const PopupMenuItem(child: Text("Settings")),
              const PopupMenuItem(child: Text("Privacy Policy")),
            ];
          })
        ],
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://media.istockphoto.com/id/1213225406/photo/holi-powder-background.jpg?s=612x612&w=0&k=20&c=3yNziFLe7G7PaLMJpoK6XOKzbAEcvK6UvIx8NOB8POI=")),
                    color: Colors
                        .primaries[Random().nextInt(Colors.primaries.length)],
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(60),
                        bottomRight: Radius.circular(60),
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60))),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset("${datas[index].image}"),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(datas[index].name!),
                          Text(
                            datas[index].details!,
                            style: MyTextThemes.bodyTextStyle,
                          ),
                          Text("\$${datas[index].price}"),
                        ],
                      ),
                      Icon(Icons.shopping_cart)
                    ]),
                // child: Center(child: Text("data $index")),
              ),
            );
          },
          separatorBuilder: (context, index) {
            if (index % 3 == 0) {
              return Divider(
                thickness: 2,
                color: MyColors.buttonColors,
              );
            } else {
              return Container();
            }
          },
          itemCount: datas.length),
    );
  }
}
