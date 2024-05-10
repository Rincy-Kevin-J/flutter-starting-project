
import 'package:fltprojeect/statemanagement/using_provider/controller/themecontroller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeController(),
    child: MyTheme(),
  ));
}

class MyTheme extends StatelessWidget {
  const MyTheme({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Provider.of<ThemeController>(context).darkTheme
          ? ThemeData.dark()
          : ThemeData.light(),
      home: ThemeChanger(),
    );
  }
}

class ThemeChanger extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Provider.of<ThemeController>(context, listen: false)
                  .switchTheme();
            },
            child: Text("Change Theme")),
      ),
    );
  }
}
