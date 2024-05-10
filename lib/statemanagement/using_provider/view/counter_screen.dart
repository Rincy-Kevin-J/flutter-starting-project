import 'package:fltprojeect/utils/text-style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import '../controller/count_controller.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // var counterCountroller = Provider.of<CounterProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Counter Provider example",
          style: MyTextThemes.textheadingg,
        ),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("You Have Pushed the button this Many times"),
            const SizedBox(
              height: 20,
            ),

            ///using consumer
            Consumer<CounterProvider>(
                builder: (context, counterController, widget) {
              return Text(
                "${counterController.counter.value}",
                style: MyTextThemes.textheadingg,
              );
            })

            ///using changenotifier class instance
            //Text("${counterCountroller.counter.value}",
            //style: MyTextThemes.bodyTextStyle,)
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(35.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton(
              onPressed: () {
                //counterCountroller.incrementCounter();
                Provider.of<CounterProvider>(context, listen: false)
                    .incrementCounter();
              },
              child: Icon(Icons.add),
            ),
            FloatingActionButton(
              onPressed: () {
                Provider.of<CounterProvider>(context, listen: false)
                    .decrementCounter();
              },
              child: Icon(Icons.minimize),
            )
          ],
        ),
      ),
    );
  }
}
