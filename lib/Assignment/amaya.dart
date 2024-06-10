import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Insta extends StatelessWidget {
  const Insta({super.key});

  @override
  Widget build(BuildContext context) {
    var devHeight = MediaQuery.of(context).size.height * 3;
    var devWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      //backgroundColor:Colors.green ,
      body: SafeArea(
        
        child: Padding(
          padding: EdgeInsets.all(3.0),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  height: devHeight,
                  width: devWidth,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://plus.unsplash.com/premium_photo-1706520000654-93561dcd1bd6?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fHx8")),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
