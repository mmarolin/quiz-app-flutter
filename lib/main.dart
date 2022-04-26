import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'When was the initial release of Flutter?',
      'answers': [
        {'text': '2015', 'score': 0},
        {'text': '2018', 'score': 0},
        {'text': '2017', 'score': 1},
        {'text': '2016', 'score': 0}
      ]
    },
    {
      'questionText': 'Who developed Flutter?',
      'answers': [
        {'text': 'IBM', 'score': 0},
        {'text': 'Amazon', 'score': 0},
        {'text': 'Apple', 'score': 0},
        {'text': 'Google', 'score': 1}
      ]
    },
    {
      'questionText': 'In which language is Flutter written in?',
      'answers': [
        {'text': 'Java', 'score': 0},
        {'text': 'Dart', 'score': 1},
        {'text': 'C#', 'score': 0},
        {'text': 'PHP', 'score': 0}
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
    print(_totalScore);
  }

  @override
  Widget build(BuildContext context) {
    var condition = _questionIndex < _questions.length;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
          centerTitle: true,
        ),
        body: condition
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore),
      ),
    );
  }
}
