import 'package:flutter/material.dart';
import 'package:shiv/answer.dart';

import 'Question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }

}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  var questIndex = 0;

  void answerQuestions() {
    setState(() {
      questIndex ++;
      print(questIndex);
    });
  }


  @override
  Widget build(BuildContext context) {
    var questArray = [
    {
      'questionText'
    :'what is fav colour',
    'answers':['Red','black','blue','white'],
    },

    {
    'questionText':'what is your fav animal',
    'answers':['Red','black','blue','white'],
    },


    {
    'questionText':'what is your name',
    'answers':['shrx','shrx','shrx','shrx̥'],
    },
    ];


    return MaterialApp(
    home: Scaffold(
    appBar: AppBar(
    title: Text('Jḁi Mata di'),
    ),
    //body: Text('har har mahadev̥'),
    body: Column(
    children: <Widget>[
      Question(questArray[questIndex]['questionText'],
    ),
    ...(questArray[questIndex]['answers'] as List<String>).map((answers){
      return Answer(answerQuestions,answers);
    }).toList()

    ],



    /*children: <Widget>[Question(questArray[questIndex]),
    Answer(answerQuestions),
    Answer(answerQuestions),
    Answer(answerQuestions),*/
    )
    ,
    )
    ,
    );
  }
}
