import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Jḁi Mata di'),
          ),
          //body: Text('har har mahadev̥'),
          body: Column(
              children: <Widget>[Text('The Question̥'),
          RaisedButton(child: Text('Answer 1'),
            onPressed: null,),
          RaisedButton(child: Text('Answer 2'),
            onPressed: null,),
          RaisedButton(child: Text('Answer 3'),
      onPressed: null,)],
    )
    ,
    )
    ,
    );
  }
}
