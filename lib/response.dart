import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Response extends StatelessWidget {
  final Function _onPressedButtonReset;
  final int _totalScore;

  Response(this._onPressedButtonReset, this._totalScore);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'You did it.',
            style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 50,
                backgroundColor: Colors.yellow),
          ),
          FlatButton(
            child: Text('Try again'),
            onPressed: _onPressedButtonReset,
            color: Colors.green,
            textColor: Colors.pink,
            hoverColor: Colors.pink,
          ),
          Text(
            'Your score is: \n $_totalScore',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.purple,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          FadeAnimatedTextKit(
            duration: Duration(milliseconds: 5000),
            isRepeatingAnimation: false,
            text: ["do IT!", "do it RIGHT!!", "do it RIGHT NOW!!!"],
            textStyle: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
