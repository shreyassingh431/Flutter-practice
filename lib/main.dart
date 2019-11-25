import 'package:flutter/material.dart';
import 'package:shiv/answer.dart';

import 'Question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }

}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  var questIndex=0;

  void answerQuestions() {
    setState(() {
      questIndex ++;
      print(questIndex);
    });

  }


  @override
  Widget build(BuildContext context) {

    var questArray =[
      'what is fav colour',
      'what is fav animal'
    ];


    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Jḁi Mata di'),
        ),
        //body: Text('har har mahadev̥'),
        body: Column(
          children: <Widget>[Question(questArray[questIndex]),
            Answer(answerQuestions),
            Answer(answerQuestions),
            Answer(answerQuestions),
          ],
        )
        ,
      )
      ,
    );
  }
}
