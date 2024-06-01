import 'package:fltprojeect/model/productsModel.dart';
import 'package:fltprojeect/utils/mycolor.dart';
import 'package:flutter/material.dart';

import '../../utils/text-style.dart';

class ListView_builder extends StatelessWidget {
  List<Product> products = [
    Product(name: "Apple", price: 120, image: "assets/icons/apple.png"),
    Product(name: "Blueberry", price: 120, image: "assets/icons/blueberry.png"),
    Product(name: "Avacado", price: 120, image: "assets/icons/avacado.png"),
    Product(name: "Cherry", price: 120, image: "assets/icons/cherry.png"),
    Product(name: "Orange", price: 120, image: "assets/icons/orange.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products"),
        backgroundColor: MyColors.basicColor,
      ),
      body: ListView(
        ///products.map=>this will fetch each map from product list and iterate is
        children: products
            .map((product) => Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Card(
                    color: Colors.lightBlueAccent,
                    child: Column(children: [
                      SizedBox(
                          width: double.infinity,
                          height: 100,
                          child: Image.asset(
                            product.image!,
                          )),
                      Text(product.name!, style: MyTextThemes.textheadingg),
                      Text('${product.price!}',
                          style: MyTextThemes.bodyTextStyle)
                    ]),
                  ),
                ))
            .toList(),


        /// toList()- since we need children property as list and the result of .map is map so we need to convert map to List
      ),
      // body: ListView.builder(
      //     itemCount: products.length,
      //     itemBuilder: (context, index) {
      //       return Card(
      //         color: MyColors.basicColor,
      //         child: ListTile(
      //           leading: SizedBox(
      //               height: 100,
      //               width: 100,
      //               child: Image.network(products[index].image!,
      //                 fit: BoxFit.cover,)),
      //           title: Text(products[index].name!),
      //           subtitle: Text('${products[index].numdata!}'),
      //           trailing: Icon(Icons.favorite_border),
      //         ),
      //       );
      //     }
      //     ),
    );
  }
}
