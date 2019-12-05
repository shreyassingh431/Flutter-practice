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
  var _totalscore = 0;

  void _resetQuiz(){
    setState(() {
      _questIndex = 0;
      _totalscore = 0;
    });

  }

  void _answerQuestions(int score) {
    _totalscore+= score;
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
      'answers': [
        {'text': 'Red', 'score': 12},
        {'text': 'black', 'score': 15},
        {'text': 'blue', 'score': 10},
        {'text': 'white', 'score': 9},
      ],
    }
    ,

  {
    'questionText': 'what is your fav animal',
    'answers': [{'text':'Rabbit', 'score':12},
    {'text':'Snake','score':5 },
    {'text':'Lion', 'score':17},
    {'text':'Dog','score':4},
    ],
    },


    {
    'questionText': 'what is your name',
    'answers': [{'text':'Shrx', 'score':12},
      {'text':'Max','score':1 },
      {'text':'Shiv', 'score':2},
      {'text':'Amod','score':3},],
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
    ) : Result(_totalscore,_resetQuiz)
    ,
    )
    ,
    );
  }
}
