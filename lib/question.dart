import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final List<Map<String, Object>> _question;
  final int _indexQuestion;

  Question(this._question, this._indexQuestion);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        _question[_indexQuestion]['textQuestion'],
        style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: Colors.red
        ),
      ),
    );
  }
}
