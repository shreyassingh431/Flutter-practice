

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget{

  final Function selectHandler;
  final String answerTest;
  Answer(this.selectHandler, this.answerTest);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: RaisedButton(
          color: Colors.blue,
          child: Text(answerTest),
          textColor: Colors.white,
          onPressed: selectHandler)
    );
  }


}