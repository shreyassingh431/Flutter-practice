

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'Question.dart';
import 'answer.dart';


class Quiz extends StatelessWidget{

 final List<Map<String, Object>> questions;
  final int questIndex ;
  final Function  answerQuestions;

  Quiz({ this.questions, this.questIndex, this.answerQuestions});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[questIndex]['questionText'],
        ),
        ...(questions[questIndex]['answers'] as List<Map<String,Object>>).map((answers) {
          return Answer(()=> answerQuestions(answers['score']), answers['text']);
        }).toList()

      ],

    );
  }


}