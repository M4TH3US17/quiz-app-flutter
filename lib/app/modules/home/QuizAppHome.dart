import 'package:flutter/material.dart';

class QuizAppHome extends StatelessWidget {

  final List<String> perguntas = ['Pergunta 1', 'Pergunta 2'];

  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),
      ),
      body: Column(
        children: [
          Text(perguntas[0]),
          ElevatedButton(
            onPressed: () {},
            child: Text('Resposta 1'),
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Resposta 2'),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Resposta 3'),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
          ),
        ],
      ),
    ),);
  }
}