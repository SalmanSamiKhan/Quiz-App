import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(
          fontSize: 30,
          // color: Colors.redAccent,
          // background: Paint()..color = Colors.cyan
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
