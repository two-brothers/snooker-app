import 'package:flutter/material.dart';

import 'bloc/bloc_provider.dart';
import 'bloc/game_bloc.dart';
import 'score.dart';

class Setup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final GameBloc bloc = BlocProvider.of<GameBloc>(context);
    String player1 = '';
    String player2 = '';

    return Scaffold(
      appBar: AppBar(
        title: Text("Setup"),
      ),
      body: SingleChildScrollView(
          child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Text("Who's playing?", style: Theme.of(context).textTheme.title),
              margin: EdgeInsets.only(bottom: 16),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 16),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Player 1',
                ),
                onChanged: (text) {
                  player1 = text;
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 16),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Player 2',
                ),
                onChanged: (text) {
                  player2 = text;
                },
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: RaisedButton(
                    onPressed: () {
                      bloc.initPlayers(player1, player2);
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Score()),
                      );
                    },
                    child: Text("START GAME"),
                  ),
                )
              ],
            ),
          ],
        ),
      )),
    );
  }
}
