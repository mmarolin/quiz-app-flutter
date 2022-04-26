import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 150,
        margin: EdgeInsets.all(10),
        child: RaisedButton(
          color: Color.fromARGB(255, 0, 86, 156),
          textColor: Colors.white,
          child: Text(answerText,
              style: new TextStyle(
                fontSize: 18,
              )),
          onPressed: selectHandler,
        ));
  }
}
