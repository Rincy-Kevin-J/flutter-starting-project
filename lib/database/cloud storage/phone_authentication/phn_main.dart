import 'package:firebase_core/firebase_core.dart';
import 'package:fltprojeect/database/cloud%20storage/phone_authentication/phone_number_auth.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyDD6txlcv60Rt8od8T1OU8WYvRJZbSTcyE",
          appId: "1:164331906833:android:f7e0cd5a516d27b07eceb0",
          messagingSenderId: "",
          projectId: "fir-project-9cf61",
          storageBucket: "fir-project-9cf61.appspot.com"
      )
  );

  runApp(MaterialApp(
    home: phoneAuth(),
  ));
}