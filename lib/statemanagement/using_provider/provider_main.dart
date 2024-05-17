import 'package:fltprojeect/statemanagement/using_multiproviders/controller/count_controller.dart';
import 'package:fltprojeect/statemanagement/using_multiproviders/view/multiprovider.dart';
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
        create: (context) => CounterProvider1(),
        child: Multi_Provider(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
