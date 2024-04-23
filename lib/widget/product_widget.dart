import 'package:fltprojeect/utils/text-style.dart';
import 'package:flutter/material.dart';

class ProductTile extends StatelessWidget {
  final String?name;
  final Color?color;
  final String?image;
  final String?title;
  final String?desc;
  final int?price;
  final VoidCallback click;
  ProductTile({
    this.name,
    this.color,
    this.image,
    this.title,
    this.desc,
    this.price,
    required this.click
});

  @override
  Widget build(BuildContext context) {

    return Card(
      elevation: 6,
      shadowColor: Colors.lightBlue,
      child: Column(

        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(image!),
          //Text(title!, style: MyTextThemes.textheadingg,),
          Text(title!, style: TextStyle(fontSize: 20),),

          Text(desc!,style:MyTextThemes.bodyTextStyle ,),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceAround,
          //   children: [
          //     Text("\$${price}",style: TextStyle(fontSize: 20),),
          //     CircleAvatar(
          //       backgroundColor: Colors.pinkAccent,
          //       child: Icon(Icons.favorite_border),
          //     )
          //   ],
          // )
        ],
      ),
    );
  }
}
