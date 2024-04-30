import 'package:fltprojeect/screens/miniquizapp/quizpage.dart';
import 'package:flutter/material.dart';

class QuizMain extends StatelessWidget {
  const QuizMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Mini Quiz App"),),
      body: const QuizPage(),
    );
  }
}
