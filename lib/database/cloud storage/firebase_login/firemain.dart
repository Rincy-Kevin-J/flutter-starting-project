import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fltprojeect/database/cloud%20storage/firebase_login/home.dart';
import 'package:fltprojeect/database/cloud%20storage/firebase_login/login.dart';
import 'package:flutter/material.dart.';
import 'package:get/get.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(apiKey: "AIzaSyDD6txlcv60Rt8od8T1OU8WYvRJZbSTcyE",
        appId: "1:164331906833:android:f7e0cd5a516d27b07eceb0",
        messagingSenderId: "",
        projectId: "fir-project-9cf61")
  );
  runApp(MyAppFire());
}
class MyAppFire extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return GetMaterialApp(
      home:FireSplash() ,
      debugShowCheckedModeBanner: false,
    );
  }
}

class FireSplash extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    User?user=FirebaseAuth.instance.currentUser;
    Timer(Duration(seconds: 2), () {
      if(user==null){
        Get.off(LoginFire());
      }
      else{
        Get.off(HomeFire());
      }
    });
  return Scaffold(
    body: Center(
      child: FlutterLogo(
        size: 30,
      ),
    ),
  );
  }
}