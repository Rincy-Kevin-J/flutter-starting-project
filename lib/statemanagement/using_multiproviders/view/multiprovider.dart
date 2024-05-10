import 'package:fltprojeect/statemanagement/using_multiproviders/controller/login_controller.dart';
import 'package:fltprojeect/statemanagement/using_provider/controller/count_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Multi_Provider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => CounterProvider()),
          ChangeNotifierProvider(create: (context) => Login_Provider()),
        ],
        child: MyScreenn(),
      ),
    );
  }
}

class MyScreenn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Counter Value"),
            ElevatedButton(
                onPressed: () {
                  Provider.of<CounterProvider>(context, listen: false)
                      .incrementCounter();
                },
                child: const Text("Increment Counter")),
            Text("Count:${Provider.of<CounterProvider>(context).counter}"),
            const SizedBox(
              height: 20,
            ),
            const Text("Auth Details"),
            ElevatedButton(
                onPressed: () {
                  Provider.of<Login_Provider>(context, listen: false).login
                      ? Provider.of<Login_Provider>(context, listen: false)
                          .logedout()
                      : Provider.of<Login_Provider>(context, listen: false)
                          .logedin();
                },
                child: const Text("Switch Login")),
            Consumer<Login_Provider>(builder: (context, authProvide, widget) {
              return Text(
                  "User is${authProvide.login ? "Login" : "Logged Out"}");
            })
          ],
        ),
      ),
    );
  }
}
