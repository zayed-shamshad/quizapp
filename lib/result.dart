import "package:flutter/material.dart";

class result extends StatelessWidget {
  final int sco;
  final VoidCallback res;
  result({this.sco, this.res});
  String get finalans {
    String st;
    if (sco >= 20) {
      st = "you are, ummm.... weird?";
    }
    if (sco > 10 && sco < 20) {
      st = "U r calm and sweet";
    } else {
      st = "u r innocent";
    }
    return st;
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Center(
          child: Text(
        finalans,
        style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      )),
      RaisedButton(child: Text("Restart"), onPressed: res)
    ]);
  }
}
