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
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Who's playing?"),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Player 1',
                  ),
                  onChanged: (text) {
                    player1 = text;
                  },
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Player 2',
                  ),
                  onChanged: (text) {
                    player2 = text;
                  },
                ),
                RaisedButton(
                  onPressed: () {
                    bloc.initPlayers(player1, player2);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Score()),
                    );
                  },
                  child: Text("Start game"),
                )
              ],
            ),
          ),
        ));
  }
}
