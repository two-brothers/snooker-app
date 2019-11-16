import 'dart:math';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';

import 'dart:async';
import 'bloc.dart';

class GameBloc implements Bloc {
  final _gameController = BehaviorSubject<Game>();
  Game _game;

  Stream<Game> get stream => _gameController.stream;

  GameBloc() {
    initPlayers('Player1', 'Player2');
  }

  void initPlayers(String player1, String player2) {
    _game = Game(player1: Player(name: player1, score: 0), player2: Player(name: player2, score: 0), playerId: 0);
    _gameController.add(_game);
  }

  void pocketBall({@required int value}) {
    _game = _game.addPoints(points: value, playerId: _game.playerId);
    _gameController.add(_game);
  }

  void foul({@required int value}) {
    _game = _game.addPoints(points: max(value, 4), playerId: _game.opponentId);
    _gameController.add(_game);
  }

  void nextTurn() {
    _game = _game.nextTurn();
    _gameController.add(_game);
  }

  @override
  void dispose() {
    _gameController.close();
  }
}

class Game {
  final Player player1;
  final Player player2;
  final int playerId;

  int get opponentId => (this.playerId + 1) % 2;

  Game({@required this.player1, @required this.player2, @required this.playerId});

  Game nextTurn() {
    return Game(player1: this.player1, player2: this.player2, playerId: this.opponentId);
  }

  Game addPoints({@required int points, @required int playerId}) {
    if (playerId == 0) {
      Player _player = this.player1;
      return Game(
          player1: Player(name: _player.name, score: _player.score + points), player2: this.player2, playerId: this.playerId);
    } else {
      Player _player = this.player2;
      return Game(
          player1: this.player1, player2: Player(name: _player.name, score: _player.score + points), playerId: this.playerId);
    }
  }
}

class Player {
  final String name;
  final int score;

  Player({@required this.name, @required this.score});
}
