import "package:flutter/material.dart";
import "./answer.dart";
import "./question.dart";

class quiz extends StatelessWidget {
  final int quesindex;
  final List<Map<String, Object>> questions;
  final Function answerChosen;
  quiz({this.questions, this.answerChosen, this.quesindex});
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(questions[quesindex]["questiontext"]),
      ...(questions[quesindex]["answertext"] as List<Map<String, Object>>)
          .map((ans) {
        return answer(() => answerChosen(ans["score"]), ans["answerr"]);
      }).toList()
    ]);
  }
}
