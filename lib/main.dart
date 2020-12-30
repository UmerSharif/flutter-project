import 'package:flutter/material.dart';

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

  void answerChosen() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
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
                questions[_questionIndex],
              ),
              RaisedButton(child: Text("Answer 1"), onPressed: answerChosen),
              RaisedButton(child: Text("Answer 2"), onPressed: answerChosen),
              RaisedButton(child: Text("Answer 3"), onPressed: answerChosen),
            ],
          )),
    );
  }
}
