import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final resetHandler;
  Result(this.resultScore, this.resetHandler);
  String get resultPhrase {
    String resultText;
    if (resultScore == 3) {
      resultText = 'You scored 3/3! You are awesome!';
    } else if (resultScore == 2) {
      resultText = 'You scored 2/3! You are good!';
    } else if (resultScore == 1) {
      resultText = 'You scored 1/3!';
    } else {
      resultText = 'Sorry! You scored 0/3!';
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
          TextButton(
            child: Text(
              'Restart quiz!',
            ),
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
