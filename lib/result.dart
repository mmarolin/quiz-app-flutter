import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = ' ';
    if (resultScore == 3) {
      resultText = 'Good job! You answered all questions correctly.';
    } else {
      resultText = 'Try again! You got only ${resultScore}/3 questions right';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: <Widget>[
      Text(
        resultPhrase,
        style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
      OutlineButton(
        child: Text(
          'Restart Quiz!',
        ),
        textColor: Colors.blue,
        onPressed: resetHandler,
      ),
    ]));
  }
}
