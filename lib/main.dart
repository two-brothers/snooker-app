import 'package:flutter/material.dart';

import 'bloc/bloc_provider.dart';
import 'bloc/game_bloc.dart';
import 'setup.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<GameBloc>(
      bloc: GameBloc(),
      child: MaterialApp(
        title: 'Snooker',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            fontFamily: 'OpenSans',
            textTheme: TextTheme(
              title: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 24, letterSpacing: 0, height: 1.5, color: Colors.black),
              button: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.black),
            )),
        home: Setup(),
      ),
    );
  }
}
