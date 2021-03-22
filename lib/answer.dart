import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerClicked;
  final String answerText;

  Answer(this.answerClicked, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(answerText),
        onPressed: answerClicked,
      ),
    );
  }
}
