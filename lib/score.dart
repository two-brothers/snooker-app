import 'package:flutter/material.dart';

import 'bloc/bloc_provider.dart';
import 'bloc/game_bloc.dart';

class Score extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final GameBloc bloc = BlocProvider.of<GameBloc>(context);

    return StreamBuilder<Game>(
        stream: bloc.stream,
        builder: (context, snapshot) {
          return snapshot.hasData
              ? Scaffold(
                  appBar: AppBar(
                    title: Text("Setup"),
                  ),
                  body: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(bottom: 40),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Text(
                                    snapshot.data.player1.name.toUpperCase(),
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  Text(
                                    snapshot.data.player1.score.toString(),
                                    style: TextStyle(fontSize: 40),
                                  )
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Text(
                                    snapshot.data.player2.name.toUpperCase(),
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  Text(
                                    snapshot.data.player2.score.toString(),
                                    style: TextStyle(fontSize: 40),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
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
                )
              : SizedBox.shrink(); // an empty widget
        });
  }
}
