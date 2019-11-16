import 'package:flutter/material.dart';

import 'bloc/bloc_provider.dart';
import 'bloc/game_bloc.dart';

class ScoreUpdater extends StatelessWidget {
  final Color color;
  final int value;

  ScoreUpdater({@required this.color, @required this.value});

  @override
  Widget build(BuildContext context) {
    final GameBloc bloc = BlocProvider.of<GameBloc>(context);

    return StreamBuilder<Game>(
        stream: bloc.stream,
        builder: (context, snapshot) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  bloc.foul(value: this.value);
                },
                child: Text("Foul"),
              ),
              RaisedButton(onPressed: () => null, color: this.color),
              RaisedButton(
                onPressed: () {
                  bloc.pocketBall(value: this.value);
                },
                child: Text("+${this.value.toString()}"),
              ),
            ],
          );
        });
  }
}
