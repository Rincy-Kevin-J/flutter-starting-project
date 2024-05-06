import 'package:fltprojeect/screens/miniquizapp/quizpage.dart';
import 'package:flutter/material.dart';

class QuizMain extends StatelessWidget {
  const QuizMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E0342),
      //appBar: AppBar(title: const Text("Mini Quiz App"),),
      body: QuizPage(),
    );
  }
}
