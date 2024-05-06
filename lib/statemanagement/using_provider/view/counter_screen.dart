import 'package:fltprojeect/utils/text-style.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../controller/count_controller.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
   // var counterCountroller = Provider.of<CounterProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title:  Text("Counter Provider example",style: MyTextThemes.textheadingg,),
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
            Consumer<CounterProvider>(builder: (context,counterController,widget){
              return Text("${counterController.counter.value}",
              style: MyTextThemes.textheadingg,);
            }
            )
            ///using changenotifier class instance
            //Text("${counterCountroller.counter.value}",
            //style: MyTextThemes.bodyTextStyle,)

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //counterCountroller.incrementCounter();
          Provider.of<CounterProvider>(context,listen: false).incrementCounter();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
