// import 'dart:async';
// import 'package:sqflite/sqflite.dart' as sql;
//
// class SQLHelper {
//   //create database
//   static Future<sql.Database> openOrCreateDb() async {
//     return await sql.openDatabase('Login', version: 1,
//         onCreate: (database, version) async {
//           await createTable(database);
//         });
//   }
//
//   //create Table
//   static Future<void> createTable(sql.Database database) async {
//     await database.execute(
//         'CREATE TABLE Login (id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,'
//             ' name TEXT, email TEXT,password TEXT)');
//   }
//   //create new user
//   static Future<int>AddUsers(String name,String email,String password)async{
//     final db=await SQLHelper.OpenDb();
//     final data={"name":name,"email":email,"password:password"};
//     final id=await db.insert("user",data);
//     return id;
//   }
//   static Future<List<Map<String,dynamic>>>readUser()
// }
//
//
//
