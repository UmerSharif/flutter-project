import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerChosen;
  const Quiz({Key key, this.questions, this.questionIndex, this.answerChosen})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questionText: questions[questionIndex]['questionText'],
        ),
        ...(questions[questionIndex]['answers'] as List<String>).map((answer) {
          return Answer(answerChosenHandler: answerChosen, answerText: answer);
        }).toList()
      ],
    );
  }
}
