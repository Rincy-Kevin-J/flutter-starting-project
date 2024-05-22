import 'package:fltprojeect/database/local_storage/hive_login_using_typeadapter/db/hivedb.dart';
import 'package:fltprojeect/database/local_storage/hive_login_using_typeadapter/model/users.dart';
import 'package:fltprojeect/database/local_storage/hive_login_using_typeadapter/screens/registrationhive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../../utils/text-style.dart';
import 'homehive.dart';

class HiveLogin extends StatefulWidget {
  @override
  State<HiveLogin> createState() => _HiveLoginState();
}

class _HiveLoginState extends State<HiveLogin> {
  final emailController = TextEditingController();

  final passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        title: Text(
          "Login Page",
          style: MyTextThemes.textheadingg,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Text(
              "Login Page",
              style: MyTextThemes.textheadingg,
            ),
            const SizedBox(
              height: 6,
            ),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                  hintText: "Email", border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: passController,
              decoration: const InputDecoration(
                  hintText: "Password", border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed: () async{
              final users=await HiveDB.getAllUsers();
              validateLogin(users);
            }, child: const Text("Login Here!!")),
            TextButton(
                onPressed: () {

                  Get.to(HiveRegister());
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HiveRegister()));
                },
                child: const Text("Not a User? Register Here!!"))
          ],
        ),
      ),
    );
  }

  void validateLogin(List<Users> users) async{
    final email=emailController.text;
    final pass=passController.text;
    if(email !="" && pass!=""){
      await Future.forEach(users, (singleUsers) {
        if(email== singleUsers.email&& pass==singleUsers.password){
          final name=singleUsers.name;
          Get.offAll(HiveHome(name));
          Get.snackbar("success", "Login Success",
          backgroundColor: Colors.green,colorText: Colors.white);
        }
        else{
          Get.snackbar("Error", "Login Failed",
          backgroundColor: Colors.red,colorText: Colors.white);
        }
      }
      );
    }
  }
}

