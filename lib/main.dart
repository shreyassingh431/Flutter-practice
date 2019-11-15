import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  void answerQuestions() {
    print('What is Your favourite colour');
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
          children: <Widget>[Text('The Question̥'),
            RaisedButton(child: Text(questArray[0]),
              onPressed: answerQuestions,),
            RaisedButton(child: Text('Answer 2'),
              onPressed: () => print('3rd button clicked'),),
            RaisedButton(child: Text('Answer 3'),
              onPressed: () {
                /*this type of functions cant be named */
                /*your stuffs*/
                print('3rd button clicked');
              },)
          ],
        )
        ,
      )
      ,
    );
  }
}
