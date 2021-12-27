import 'package:flutter/material.dart';

class answer extends StatelessWidget {
  final String ans;
  final Function fnc;
  answer(this.fnc, this.ans);
  Widget build(BuildContext context) {
    return (Container(
        child: RaisedButton(
          child: Text(ans),
          onPressed: fnc,
          color: Colors.blue,
          textColor: Colors.white,
        ),
        width: double.infinity,
        margin: EdgeInsets.all(10)));
  }
}
