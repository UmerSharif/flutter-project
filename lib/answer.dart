import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerChosenHandler;
  final String answerText;
  const Answer({Key key, this.answerChosenHandler, this.answerText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
          color: Colors.blue,
          textColor: Colors.white,
          child: Text(answerText),
          onPressed: answerChosenHandler),
    );
  }
}
