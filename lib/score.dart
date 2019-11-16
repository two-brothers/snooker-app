import 'package:flutter/material.dart';

class Score extends StatelessWidget {
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  onPressed: () {
                    /*...*/
                  },
                  color: Colors.white,
                  child: Text("Foul on white"),
                ),
              ],
            ),
            Row(
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
                    color: Colors.red),
                RaisedButton(
                  onPressed: () {
                    /*...*/
                  },
                  child: Text("+1"),
                ),
              ],
            ),
            Row(
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
                    color: Colors.yellow),
                RaisedButton(
                  onPressed: () {
                    /*...*/
                  },
                  child: Text("+2"),
                ),
              ],
            ),
            Row(
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
                    color: Colors.green),
                RaisedButton(
                  onPressed: () {
                    /*...*/
                  },
                  child: Text("+3"),
                ),
              ],
            ),
            Row(
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
                    color: Colors.brown),
                RaisedButton(
                  onPressed: () {
                    /*...*/
                  },
                  child: Text("+4"),
                ),
              ],
            ),
            Row(
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
                    color: Colors.blue),
                RaisedButton(
                  onPressed: () {
                    /*...*/
                  },
                  child: Text("+5"),
                ),
              ],
            ),
            Row(
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
                    color: Colors.pinkAccent),
                RaisedButton(
                  onPressed: () {
                    /*...*/
                  },
                  child: Text("+6"),
                ),
              ],
            ),
            Row(
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
                    color: Colors.black),
                RaisedButton(
                  onPressed: () {
                    /*...*/
                  },
                  child: Text("+7"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
