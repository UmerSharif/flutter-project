import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var questionIndex = 0;
  void answerChosen() {
    questionIndex = questionIndex + 1;
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite color ?',
      'What\'s your favourite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("MY Text is here"),
          ),
          body: Column(
            children: [
              Text(
                questions[questionIndex],
              ),
              RaisedButton(child: Text("Answer 1"), onPressed: answerChosen),
              RaisedButton(child: Text("Answer 2"), onPressed: answerChosen),
              RaisedButton(child: Text("Answer 3"), onPressed: answerChosen),
            ],
          )),
    );
  }
}
