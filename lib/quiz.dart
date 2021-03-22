import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final int questionIndex;
  final List<Map<String, Object>> questions;
  final Function answerQuestion;

  Quiz(this.questionIndex, this.questions, this.answerQuestion);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Question(questions[questionIndex]["question"]),
          ...(questions[questionIndex]["answers"] as List<Map<String, Object>>)
              .map((answer) {
            return Answer(
                () => answerQuestion(answer["score"]), answer["text"]);
          }).toList()
        ],
      ),
    );
  }
}
