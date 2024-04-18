import 'package:flutter/material.dart';

class TabW extends StatelessWidget {
  const TabW({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4, child:
    Scaffold(
      body: TabBar(tabs: [
        Text("Chat"),
        Text("Update"),

      ]),
    ));
  }
}
