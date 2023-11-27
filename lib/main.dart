import 'package:flutter/material.dart';

void main(List<String> args) => runApp(QuizAppHome());

class QuizAppHome extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),
      ),
      body: Text('Components'),
    ),);
  }
}