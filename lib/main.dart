import 'package:flutter/material.dart';
import 'package:shiv/Quiz.dart';
import 'package:shiv/Result.dart';


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
  var _questIndex = 0;

  void _answerQuestions() {
    setState(() {
      _questIndex ++;
      print(_questIndex);
    });
  }


  @override
  Widget build(BuildContext context) {
    final _questArray = const [
      {
        'questionText': 'what is fav colour',
        'answers': ['Red', 'black', 'blue', 'white'],
      },

      {
        'questionText': 'what is your fav animal',
        'answers': ['Red', 'black', 'blue', 'white'],
      },


      {
        'questionText': 'what is your name',
        'answers': ['shrx', 'shrx', 'shrx', 'shrx̥'],
      },
    ];


    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Jḁi Mata di'),
        ),
        //body: Text('har har mahadev̥'),
        body: _questIndex < _questArray.length ? Quiz(
            answerQuestions: _answerQuestions,
            questIndex: _questIndex,
            questions: _questArray
        ) : Result(),
      ),
    );
  }
}
