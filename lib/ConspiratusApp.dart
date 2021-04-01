import 'package:flutter/material.dart';
import 'layout/BeginGamePage.dart';
import 'layout/CreateGamePage.dart';
import 'layout/JoinToGamePage.dart';

class ConspiratusApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ConspiratusAppState();
}

class ConspiratusAppState extends State<ConspiratusApp> {
  GameMode? _gameMode;
  BeginGamePage beginGamePage = BeginGamePage();

  ConspiratusAppState() : super() {}

  void _gameModeChange(GameMode mode) {
    setState(() {
      _gameMode = mode;
      print(_gameMode);
    });
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Conspiratus',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => BeginGamePage(),
        '/master': (context) => CreateGamePage(),
        '/client': (context) => JoinToGamePage(),
      },


    );
  }
}
