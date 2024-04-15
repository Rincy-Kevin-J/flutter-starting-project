import 'package:flutter/material.dart';

import '../Sign_up.dart';

class App extends StatelessWidget {
  var app=[
    {
      "name":"iPhone 13 Pro",
      "product":"Mobile",
      "pic":"https://tse1.mm.bing.net/th?id=OIP.ZexOj0l_uymbhkQ_lMvoBgHaJw&pid=Api&P=0&h=180",
      "strike":1299 ,
      "price":"\$999",
       "offer":"20% offer"
    },
    {
      "name":"iPhone SE(PRODUCT)",
      "product":"Mobile",
      "pic":"https://tse1.mm.bing.net/th?id=OIP.wt7q_o0-mA1erWXftgB6ggHaHa&pid=Api&P=0&h=180",
      "strike":1299 ,
      "price":"\$999",
      "offer":"20% offer"
    },
    {
      "name":"Apple Watch Series 7",
      "product":"Watch",
      "pic":"https://tse1.mm.bing.net/th?id=OIP.6TGmMjfjxX4x2sCr-42k2gHaIl&pid=Api&P=0&h=180",
      "strike":1299 ,
      "price":"\$999",
      "offer":"20% offer"
    },
    {
      "name":"Apple Watch SE",
      "product":"Watch",
      "pic":"https://tse2.mm.bing.net/th?id=OIP.JEuvvDKEJXEM7uygwlB23wHaIx&pid=Api&P=0&h=180",
      "price":"1466 \$ 749 50% offer",
    "strike":1299 ,
    "price":"\$999",
    "offer":"20% offer"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
      backgroundColor: Colors.teal,

        title: Text("Catalog App",
        style: TextStyle(color: Colors.white),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        shrinkWrap: true,
        children: List.generate(4, (index) => Card(

          child: Column(
            children: [
              Expanded(child:Image.network("${app[index]["pic"]}") ),

              Text("${app[index]["name"]}",

              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
              ),
              Text("${app[index]["product"]}",
              style: TextStyle(fontSize: 15),),
              Row(
                children: [
                  Text("\$${app[index]["strike"]}",
                  style: TextStyle(fontSize: 16,color: Colors.grey,
                  decoration: TextDecoration.lineThrough),),
                  Text("${app[index]["price"]}",
                    style: TextStyle(fontSize: 16,color: Colors.teal),),
                  Text("${app[index]["offer"]}",
                    style: TextStyle(fontSize: 16,color: Colors.orange),),
                ],
              ),


              MaterialButton(onPressed: () {

                Navigator.push(context, MaterialPageRoute(builder: (context)=>RegistrationPage())) ;

              },

                color: Colors.teal,
                minWidth: 200,

                shape: StadiumBorder(),

                child: Text("🛒 Add to Cart",

                style:TextStyle(
                  color: Colors.white
                ),),
              )


            ],



          ),

        )
        ),
        ),
      ),
    );
  }
}
