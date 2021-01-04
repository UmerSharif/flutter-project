import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  const Result({Key key, this.totalScore}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      "No More question",
      style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
    ));
  }
}
