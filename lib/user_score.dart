import 'package:flutter/material.dart';
import 'bloc/game_bloc.dart';

class UserScore extends StatelessWidget {
  final Player player;
  final bool isActive;

  UserScore({@required this.player, @required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          this.player.name.toUpperCase(),
          style: TextStyle(fontSize: 16, color: _textColor()),
        ),
        Text(
          this.player.score.toString(),
          style: TextStyle(fontSize: 40, color: _textColor())
        )
      ],
    );
  }

  Color _textColor() {
    return this.isActive ? Colors.red : Colors.black;
  }
}
