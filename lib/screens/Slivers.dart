

import 'package:fltprojeect/utils/text-style.dart';
import 'package:flutter/material.dart';

class CustomScroll extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: false,
            title: Text("My Products"),
            bottom: AppBar(
              elevation: 0,
              title: Container(
                width: double.infinity,
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search Here 😊 ",
                    prefixIcon: Icon(Icons.search_outlined),
                    suffixIcon: Icon(Icons.camera),
                  ),
                ),
              ),
            ),
          ),
          SliverList(delegate:  SliverChildBuilderDelegate(
              childCount: 10,
                  (context, index) => Card(
            child: Text("hello $index"),

          ))),
          SliverToBoxAdapter(
            child: Padding(padding:const EdgeInsets.all(10.0),
            child: Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image:NetworkImage("https://images.pexels.com/photos/531880/pexels-photo-531880.jpeg?auto=compress&cs=tinysrgb&w=600"))
                
              ),
            ),),
          ),
          SliverGrid(delegate: SliverChildBuilderDelegate((context, index) => Card(
            color: Colors.black,
            child: Column(
              children: [
                Image.asset("assets/icons/blueberry.png",
                height:50,
                width: 100),
                Text("\$ 230",
                style: MyTextThemes.bodyTextStyle,)
              ],
            ),
          )), gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
          childAspectRatio: 1,
            crossAxisSpacing: 20,
          mainAxisSpacing: 20)),
        ],
      )),
    );
  }
}
