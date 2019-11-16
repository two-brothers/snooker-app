import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';

import 'dart:async';
import 'bloc.dart';

class GameBloc implements Bloc {
  final _gameController = BehaviorSubject<Game>();
  Game _game;

  Stream<Game> get stream => _gameController.stream;

  void initPlayers(String player1, String player2) {
    _game = Game(player1: Player(name: player1, score: 0), player2: Player(name: player2, score: 0));
    _gameController.add(_game);
  }

  void addPoints({@required int playerId, @required int increment}) {
    if (playerId == 0) {
      Player _player = _game.player1;
      _game = Game(player1: Player(name: _player.name, score: _player.score + increment), player2: _game.player2);
      _gameController.add(_game);
    } else if (playerId == 1) {
      Player _player = _game.player2;
      _game = Game(player1: _game.player1, player2: Player(name: _player.name, score: _player.score + increment));
      _gameController.add(_game);
    }
  }

  @override
  void dispose() {
    _gameController.close();
  }
}

class Game {
  final Player player1;
  final Player player2;

  Game({@required this.player1, @required this.player2});
}

class Player {
  final String name;
  final int score;

  Player({@required this.name, @required this.score});
}