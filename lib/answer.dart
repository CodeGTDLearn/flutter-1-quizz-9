import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String _answer;
  final Function _onPressedButtonAnswer;

  Answer(this._answer, this._onPressedButtonAnswer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(
          _answer,
          style: TextStyle(
              fontSize: 20,
              letterSpacing: 10,
              fontWeight: FontWeight.bold,
              color: Colors.yellow),
        ),
        onPressed: _onPressedButtonAnswer,
      ),
    );
  }
}
