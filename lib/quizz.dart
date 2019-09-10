import 'package:flutter/material.dart';
import 'package:quizz9/answer.dart';
import 'package:quizz9/question.dart';

class Quizz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int _indexQuestion;
  final Function _onPressedButtonAnswer;

  Quizz(this.questions, this._indexQuestion, this._onPressedButtonAnswer);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(
          questions,
          _indexQuestion,
        ),
        ...(questions[_indexQuestion]['textAnswer']
                as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
            answer['text'],
            () => {_onPressedButtonAnswer(answer['score'])},
          );
        }).toList(),
      ],
    );
  }
}
