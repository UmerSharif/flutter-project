import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetQuiz;
  const Result({Key key, this.totalScore, this.resetQuiz}) : super(key: key);

  String get resultPhrase {
    var resultText = 'Done Bro';
    if (totalScore >= 14) {
      resultText = 'you done well bro !';
    } else if (totalScore >= 8) {
      resultText = "Likeable";
    } else {
      resultText = "Dude what is wrong with You!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        Text("Total Score is: $totalScore"),
        FlatButton(onPressed: resetQuiz, child: Text("Restart Quiz"))
      ],
    ));
  }
}
