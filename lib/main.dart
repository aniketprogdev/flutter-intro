import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/result.dart';

import './quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  final _questions = const [
    {
      "question": "What is your favorite color?",
      "answers": [
        {"text": "blue", "score": 10},
        {"text": "red", "score": 20},
        {"text": "green", "score": 30},
      ]
    },
    {
      "question": "What is your favorite drink?",
      "answers": [
        {"text": "vodka", "score": 10},
        {"text": "gin", "score": 20},
        {"text": "beer", "score": 30},
      ]
    },
    {
      "question": "What is your favorite sport?",
      "answers": [
        {"text": "cricket", "score": 10},
        {"text": "football", "score": 20},
        {"text": "hockey", "score": 30},
      ]
    },
  ];

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
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
        body: _questionIndex < _questions.length
            ? Quiz(
                _questionIndex,
                _questions,
                _answerQuestion,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
