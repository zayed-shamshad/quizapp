import 'package:flutter/material.dart';
import './result.dart';
import './quiz.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return myAppState();
  }
}

class myAppState extends State<myApp> {
  var quesindex = 0;
  var totalscore = 0;
  var questions = [
    {
      "questiontext": "what is your favourite colour",
      "answertext": [
        {"answerr": "blue", "score": 9},
        {"answerr": "red", "score": 7},
        {"answerr": "yellow", "score": 4},
        {"answerr": "black", "score": 10}
      ]
    },
    {
      "questiontext": "what is your favorite animal",
      "answertext": [
        {"answerr": "dog", "score": 6},
        {"answerr": "cat", "score": 8},
        {"answerr": "rabbit", "score": 7},
        {"answerr": "bingus", "score": 9}
      ]
    },
    {
      "questiontext": "what is your favourite food",
      "answertext": [
        {"answerr": "dosa", "score": 8},
        {"answerr": "pizza", "score": 10},
        {"answerr": "burger", "score": 4},
        {"answerr": "hotdog", "score": 6}
      ]
    }
  ];
  void answerChosen(int scor) {
    totalscore += scor;

    setState(() {
      if (quesindex < questions.length) {
        quesindex = quesindex + 1;
      }
    });

    print(quesindex);
  }

  void resett() {
    setState(() {
      quesindex = 0;
      totalscore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text("my first app")),
      body: (quesindex < questions.length)
          ? quiz(
              answerChosen: answerChosen,
              quesindex: quesindex,
              questions: questions)
          : result(sco: totalscore, res: resett),
    ));
  }
}
