import 'dart:ffi';

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerChosenHandler;
  const Answer({Key key, this.answerChosenHandler}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
          color: Colors.blue,
          child: Text("Answer 3"),
          onPressed: answerChosenHandler),
    );
  }
}
