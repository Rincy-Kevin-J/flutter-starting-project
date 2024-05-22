import 'package:fltprojeect/database/local_storage/hive_login_using_typeadapter/model/users.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/adapters.dart';

import 'loginhive.dart';

void main(){
  Hive.initFlutter();
  Hive.registerAdapter(UsersAdapter());
  Hive.openBox<Users>("userdata");
  runApp(MyHive());
}

class MyHive extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home:HiveLogin(),debugShowCheckedModeBanner: false,
    );
  }

}