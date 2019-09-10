import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizz9/answer.dart';
import 'package:quizz9/question.dart';
import 'package:quizz9/quizz.dart';
import 'package:quizz9/response.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'textQuestion': 'What\'is you favorite color?',
      'textAnswer': [
        {'text': 'white', 'score': 1},
        {'text': 'black', 'score': 2},
        {'text': 'blue', 'score': 3}
      ],
    },
    {
      'textQuestion': 'What\'is you favorite animal?',
      'textAnswer': [
        {'text': 'cat', 'score': 1},
        {'text': 'dog', 'score': 2},
        {'text': 'lion', 'score': 3},
        {'text': 'zebra', 'score': 3}
      ],
    },
  ];

  var _indexQuestion = 0;
  var _totalScore = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: (_indexQuestion < _questions.length)
            ? Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Quizz(
                    _questions,
                    _indexQuestion,
                    _onPressedButtonAnswer,
                  )
                ],
              )
            : Response(_onPressedButtonReset, _totalScore),
      ),
    );
  }

  void _onPressedButtonAnswer(int score) {
    setState(() {
      if (_indexQuestion < _questions.length) {
        ++_indexQuestion;
        _totalScore += score;
      }
    });
  }

  void _onPressedButtonReset() {
    setState(() {
      _indexQuestion = 0;
      _totalScore = 0;
    });
  }
}
