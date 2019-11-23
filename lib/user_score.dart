import 'package:flutter/material.dart';
import 'bloc/game_bloc.dart';
import 'bloc/bloc_provider.dart';

class UserScore extends StatelessWidget {
  final Player player;
  final bool isActive;

  UserScore({@required this.player, @required this.isActive});

  @override
  Widget build(BuildContext context) {
    final GameBloc bloc = BlocProvider.of<GameBloc>(context);

    return FlatButton(
      onPressed: () {
        if (!this.isActive) {
          bloc.nextTurn();
        }
      },
      child: Column(
        children: <Widget>[
          Text(this.player.score.toString(), style: TextStyle(fontSize: 70, color: _textColor())),
          Text(
            this.player.name.toUpperCase(),
            style: TextStyle(fontSize: 14, color: _textColor()),
          )
        ],
      ),
    );
  }

  Color _textColor() {
    return this.isActive ? Colors.red : Colors.black;
  }
}
