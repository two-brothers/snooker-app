import 'package:flutter/material.dart';

class ScoreUpdater extends StatelessWidget {

  final Color color;
  final int value;

  ScoreUpdater({ @required this.color, @required this.value });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          onPressed: () {
            /*...*/
          },
          child: Text("Foul"),
        ),
        RaisedButton(
            onPressed: () {
              /*...*/
            },
            color: this.color),
        RaisedButton(
          onPressed: () {
            /*...*/
          },
          child: Text("+${this.value.toString()}"),
        ),
      ],
    )
  }
}