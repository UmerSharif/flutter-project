import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

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

  void _answerChosen() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your favourite color ?',
        'answers': ['Black', 'Red', 'Green'],
      },
      {
        'questionText': 'What\'s your favourite animal?',
        'answers': ['Dog', 'Goat', 'Camel']
      },
      {
        'questionText': 'What\'s your favourite IDE?',
        'answers': ['Vim', 'Storm', 'VsCode']
      },
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("MY Text is here"),
          ),
          body: Column(
            children: [
              Question(
                questionText: questions[_questionIndex]['questionText'],
              ),
              ...(questions[_questionIndex]['answers'] as List<String>)
                  .map((answer) {
                return Answer(
                    answerChosenHandler: _answerChosen, answerText: answer);
              }).toList()
              //    Answer(answerChosenHandler: _answerChosen),
              //    Answer(answerChosenHandler: _answerChosen),
              //    Answer(answerChosenHandler: _answerChosen),
            ],
          )),
    );
  }
}
