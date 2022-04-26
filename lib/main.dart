import 'package:flutter/material.dart';

import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      if (_questionIndex < 1) {
        _questionIndex += 1;
      } else {
        return;
      }
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What is your favorite color?',
      'What is your favorite animal?'
    ];
    var answers = [
      ['Orange', 'Red', 'Black'],
      ['Giraffe', 'Elephant', 'Dog'],
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            Question(
              questions[_questionIndex],
            ),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: _answerQuestion,
              color: Color.fromARGB(255, 157, 121, 255),
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: _answerQuestion,
              color: Color.fromARGB(255, 157, 121, 255),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: _answerQuestion,
              color: Color.fromARGB(255, 157, 121, 255),
            ),
          ],
        ),
      ),
    );
  }
}
