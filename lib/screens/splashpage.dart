import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green[200],

        ///body as external icon/image
        body: Center(
          // child:Image(image: AssetImage("assets/icons/teddy.png")),
          // child: Image(image: NetworkImage("https://cdn-icons-png.flaticon.com/256/4193/4193251.png")),

           child:Lottie.asset ("assets/animation/hamsteranime.json"),
        )
        // body: Center(
        //     child: Icon(Icons.water_damage_outlined,size: 100,color:Colors.blue)),

        );
  }
}
