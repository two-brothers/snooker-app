import 'package:flutter/material.dart';

import 'bloc/bloc_provider.dart';
import 'bloc/game_bloc.dart';
import 'score_updater.dart';
import 'user_score.dart';

class Score extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final GameBloc bloc = BlocProvider.of<GameBloc>(context);

    return StreamBuilder<Game>(
        stream: bloc.stream,
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return SizedBox.shrink(); // an empty widget
          }
          return Scaffold(
              appBar: AppBar(
                title: Text("Setup"),
              ),
              body: Center(
                child: SingleChildScrollView(
                    child: Stack(
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(bottom: 40),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              UserScore(player: snapshot.data.player1, isActive: snapshot.data.playerId == 0),
                              FlatButton(
                                onPressed: () {
                                  bloc.nextTurn();
                                },
                                child: Icon(Icons.swap_horiz),
                              ),
                              UserScore(player: snapshot.data.player2, isActive: snapshot.data.playerId == 1),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RaisedButton(
                              onPressed: () {
                                bloc.foul(value: 0);
                              },
                              color: Colors.white,
                              child: Text("Foul on white"),
                            ),
                          ],
                        ),
                        ScoreUpdater(color: Colors.red, value: 1),
                        ScoreUpdater(color: Colors.yellow, value: 2),
                        ScoreUpdater(color: Colors.green, value: 3),
                        ScoreUpdater(color: Colors.brown, value: 4),
                        ScoreUpdater(color: Colors.blue, value: 5),
                        ScoreUpdater(color: Colors.pinkAccent, value: 6),
                        ScoreUpdater(color: Colors.black, value: 7)
                      ],
                    ),
                  ],
                )),
              ));
        });
  }
}
