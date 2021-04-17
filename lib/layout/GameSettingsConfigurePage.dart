import 'package:conspiratus/model/AppMode.dart';
import 'package:flutter/material.dart';
import 'package:conspiratus/routing/routing.dart';
import 'package:conspiratus/ConspiratusApp.dart';
import 'package:conspiratus/layout/ListIncrementElement.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:conspiratus/model/Settings.dart';

class GameSettingsConfigurePage extends StatefulWidget {
  final String title;

  GameSettingsConfigurePage({required this.title}) : super();

  @override
  State<StatefulWidget> createState() => _GameSettingConfigurePageState();
}

class _GameSettingConfigurePageState extends State<GameSettingsConfigurePage> {
  int mafiaCount = 0;
  int citizensCount = 0;
  int policemanCount = 0;

  void saveGameSettings() {
    Settings settings = Provider.of<Settings>(context, listen: false);
    settings.mafiaCount = mafiaCount;
    settings.citizenCount = citizensCount;
    settings.policemanCount = policemanCount;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Column(
          children: [
            ListIncrementItem(
                title: 'Ilość mafii',
                valueChanged: (value) => {mafiaCount = value}),
            ListIncrementItem(
                title: 'Ilość obywateli',
                valueChanged: (value) => {citizensCount = value}),
            ListIncrementItem(
                title: 'Ilość Policjantów',
                valueChanged: (value) => {policemanCount = value}),
            TextButton(
                child: Text("Rozpocznij grę"),
                onPressed: () {
                  saveGameSettings();
                  Navigator.pushNamed(context, Routing.mainPage);
                })
          ],
        ),
      ),
    );
  }
}
