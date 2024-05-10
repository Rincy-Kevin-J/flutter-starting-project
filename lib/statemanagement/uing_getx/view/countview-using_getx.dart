import 'package:fltprojeect/statemanagement/uing_getx/controller/count_controller.dart';
import 'package:fltprojeect/utils/text-style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

void main() {
  runApp(MaterialApp(
    home: Get_main(),
  ));
}

class Get_main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Get.put -to make the controller class available in the entire widget tree
    final CountController controller = Get.put(CountController());
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ///Obx()=used to make the widget observable
            Obx(() => Text(
                  "Count:${controller.count}",
                  style: MyTextThemes.textheadingg,
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {
                      controller.increment();
                    },
                    child: Text("Increment")),
                ElevatedButton(
                    onPressed: () {
                      controller.decrement();
                    },
                    child: Text("Decrement"))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
