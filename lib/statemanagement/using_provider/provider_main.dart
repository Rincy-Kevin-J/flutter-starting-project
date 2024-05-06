import 'package:fltprojeect/statemanagement/using_provider/controller/count_controller.dart';
import 'package:fltprojeect/statemanagement/using_provider/view/counter_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider(
        create: (context) => CounterProvider(),
        child: CounterScreen(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
