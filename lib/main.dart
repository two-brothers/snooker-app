import 'package:flutter/material.dart';
import 'setup.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snooker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Setup(),
    );
  }
}