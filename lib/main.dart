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
      'answers': ['2015', '2018', '2017', '2016']
    },
    {
      'questionText': 'Who developed Flutter?',
      'answers': ['Google', 'Apple', 'Amazon', 'IBM']
    },
    {
      'questionText': 'In which language is Flutter written in?',
      'answers': ['Java', 'C#', 'PHP', 'Dart']
    },
  ];

  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
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
            : Result(),
      ),
    );
  }
}
