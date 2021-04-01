import 'package:flutter/material.dart';

// class GameModeChangeNotifier extends ChangeNotifier{
//   GameMode? _gameMode;
//
//   GameMode? get gameMode => _gameMode;
//
//   set gameMode(GameMode? value) {
//     _gameMode = value;
//     notifyListeners();
//   }
// }
//
// class BeginGamePage extends StatelessWidget with ChangeNotifier{
//   final String title = 'Conspiratus';
//
// }

class GameModeState with ChangeNotifier{
  GameMode? _gameMode;

  GameModeState();

  GameMode? get gameMode => _gameMode;

  set gameMode(GameMode? value) {
    _gameMode = value;
    notifyListeners();
  }
}

class BeginGamePage extends StatefulWidget{
  final String title = 'Conspiratus';

  @override
  State<StatefulWidget> createState() => _BeginGamePageState();

}

class _BeginGamePageState extends State<BeginGamePage>{
  GameModeState _gameModeState = GameModeState();

  GameModeState get gameModeState => _gameModeState;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Center(
              child: TextButton(
                  child: Text("Załóż grę LAN"),
                  onPressed: () {
                    _gameModeState.gameMode = GameMode.MASTER;
                    Navigator.pushNamed(context, '/master');
                  })),
          Center(
              child: TextButton(
                  child: Text("Dołącz do gry LAN"),
                  onPressed: () {
                    _gameModeState.gameMode = GameMode.CLIENT;
                    Navigator.pushNamed(context, '/client');
                  })),
        ],
      ),
    );
  }
}


enum GameMode { MASTER, CLIENT }