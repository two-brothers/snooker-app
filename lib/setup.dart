import 'package:flutter/material.dart';

import 'bloc/bloc_provider.dart';
import 'bloc/game_bloc.dart';

class Setup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final GameBloc bloc = BlocProvider.of<GameBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Setup"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Who's playing?"),
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
                bloc.initPlayers('Nikesh', 'Mikey');
              },
              child: Text("Start game"),
            )
          ],
        ),
      ),
    );
  }
}
