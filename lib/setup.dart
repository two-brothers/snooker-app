import 'package:flutter/material.dart';

class Setup extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Setup"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
                "Who's playing?"
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Player 1',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Player 2',
              ),
            ),
            RaisedButton(
              onPressed: () {
                /*...*/
              },
              child: Text("Start game"),
            )
          ],
        ),
      ),
    );
  }
}
