import 'package:fltprojeect/utils/text-style.dart';
import 'package:flutter/material.dart';

class AlertDialogue extends StatelessWidget {
  const AlertDialogue({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: () => showAlert(context),
            child: Text("Show Alert")),
      ),
    );
  }

  showAlert(BuildContext context) {
    showDialog(context: context, builder: (context){
      
      return AlertDialog(
        icon: Icon(Icons.question_mark,color: Colors.red,size: 30,),
        title: Text("Exit?",style: MyTextThemes.textheadingg,),
        content: Text("Doo you want to exit"),
        actions: [
          TextButton(onPressed:  () {
            Navigator.of(context).pop();
          }, child: Text("yes")),
          TextButton(onPressed:() {
            Navigator.of(context).pop();
          }, child: Text("No")),
          TextButton(onPressed:  () {
            Navigator.of(context).pop();
          }, child: Text("Cancel")),
        ],
      );
    }
    );
  }
}
