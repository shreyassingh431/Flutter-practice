


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class Result extends StatelessWidget{

  final int resultscore;
  final Function resetHandler;

  Result(this.resultscore, this.resetHandler);

  String get resultPhrase {

    var resultText = 'Thank God, we did it';

    if(resultscore<=8){
      resultText = "You are awesome and innocent";
    }else if (resultscore<=12){
      resultText = "You are a jerk";
    }else if(resultscore<=16){
      resultText ="You strange";
    }else{
      resultText = "get lost jackass";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(resultPhrase,
          style : TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          FlatButton(child: Text('Restart Quiz'),
          textColor: Colors.blue,
          onPressed: resetHandler,)
        ],
      )
    );
  }


}