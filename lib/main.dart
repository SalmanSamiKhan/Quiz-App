import 'package:flutter/material.dart'; 
import 'quiz.dart';
import 'result.dart';

void main() { //main() --> main method
  runApp(MyApp()); // runApp() -> Inflate the given widget and attach it to the screen.
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {

  //Question aswer set
  final _questions = const [
    {
      'questionText': 'What\'s color is apple?',
      'answers': [
        {'text': 'black', 'score': 0},
        {'text': 'red', 'score': 1},
        {'text': 'blue', 'score': 0},
        {'text': 'green', 'score': 0},
      ],
    },
    {
      'questionText': 'Which animal sounds "meow" ?',
      'answers': [
        {'text': 'cat', 'score': 1},
        {'text': 'dog', 'score': 0},
        {'text': 'tiger', 'score': 0},
        {'text': 'lion', 'score': 0},
      ],
    },
    {
      'questionText': 'What color is the sky?',
      'answers': [
        {'text': 'blue', 'score': 1},
        {'text': 'red', 'score': 0},
        {'text': 'pink', 'score': 0},
        {'text': 'orange', 'score': 0},
      ],
    },
  ];

// Managing score, questionindex
  var _questionIndex = 0;
  var _totalScore = 0;
  void _resetQuiz() {
    setState(() {
    _questionIndex = 0;
    _totalScore = 0;  
    });
    
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
