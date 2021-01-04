import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';

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
  final _questions = const [
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
  var _questionIndex = 0;

  void _answerChosen() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("MY Text is here"),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  questions: _questions,
                  questionIndex: _questionIndex,
                  answerChosen: _answerChosen,
                )
              : Result()),
    );
  }
}
// ... because coloum takes a list of widgets, this will prevent nested list
