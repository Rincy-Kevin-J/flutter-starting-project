// import 'dart:async';
//
// import 'package:fltprojeect/database/local_storage/login/database/db.dart';
// import 'package:flutter/material.dart';
//
// class Home extends StatefulWidget {
//   const Home({super.key});
//
//   @override
//   State<Home> createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//   List<Map<String,dynamic>>LoginFromDb=[];
//
//   @override
//   void initState() {
//     readUser();
//     super.initState();
//   }
//   Future<void>readUser()async{
//     final task=await SQLHelper.readUser();
//   }
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//     );
//   }
// }
