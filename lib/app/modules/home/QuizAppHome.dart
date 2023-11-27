import 'package:flutter/material.dart';

class QuestionAppState extends State<QuizAppHome> {
  final perguntas = ['Pergunta 1', 'Pergunta 2', 'Pergunta 3'];
  var questionSelected = 0;

  void answerQuestion() {
    setState(() {
      bool nextQuestion = (questionSelected+1) < perguntas.length;

      if(nextQuestion) questionSelected++;
      else questionSelected = 0;

      print('INFO: Pergunta ${questionSelected+1} Selecionada');
    });
  }

  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(title: Text('Quiz App')),
      body: Column(
        children: [
          Text(perguntas[questionSelected]),
          ElevatedButton(
            onPressed: answerQuestion,
            child: Text('Resposta 1'),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
          ),
          ElevatedButton(
            onPressed: answerQuestion,
            child: Text('Resposta 2'),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
          ),
          ElevatedButton(
            onPressed: answerQuestion,
            child: Text('Resposta 3'),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
          ),
        ],
      ),
    ),);
  }
}

class QuizAppHome extends StatefulWidget {

  @override
  QuestionAppState createState() {
    return QuestionAppState();
  }

}