import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  // Build a list of maps where each map has a question string and a list of answers associated to the question
  var questions = [
    {
      "questionText": "What's your fav color?",
      "answerChoices": ["blue", "red", "green", "yellow"]
    },
    {
      "questionText": "What's your fav drink?",
      "answerChoices": ["beer", "red wine", "white wine", "gin"]
    },
    {
      "questionText": "What's your fav instrument?",
      "answerChoices": ["guitar", "violin", "tabla", "piano"]
    }
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("First App"),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]["questionText"]),
            ...(questions[_questionIndex]["answerChoices"] as List<String>)
                .map((answerChoice) {
              return Answer(_answerQuestion, answerChoice);
            }).toList()
          ],
        ),
      ),
    );
  }
}
