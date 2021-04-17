import 'package:conspiratus/model/AppMode.dart';
import 'package:flutter/material.dart';
import 'package:conspiratus/routing/routing.dart';
import 'package:conspiratus/ConspiratusApp.dart';
import 'package:conspiratus/layout/ListIncrementElement.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:conspiratus/model/Settings.dart';

class WaitingForGamePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GameSettingsConfigurePage(title: 'Dupa123');
  }
}

class GameSettingsConfigurePage extends StatelessWidget {
  final String title;

  GameSettingsConfigurePage({required this.title}) : super() {}

  @override
  Widget build(BuildContext context) {
    // Settings settings = Provider.of<Settings>(context, listen: false);

//Sra się o jakis element Providera, ze robie cos nie tak jak powinienem

    return Scaffold(
      appBar: AppBar(title: Text(this.title)),
      body: Center(
        child: Column(
          children: [
            Container(
                height: 200,
                width: 200,
                child: ListIncrementItem(
                    title: 'Ilość mafii',
                    // valueChanged: (value) => Provider.of<Settings>(context,
                    //             listen: false)
                    //         .mafiaCount =
                    //     value)
                )), //ListView słuzy by zrobic liste scrollowalną
            // GameToJoinListWidget()
            TextButton(
                child: Text("Rozpocznij grę"),
                onPressed: () {
                  Navigator.pushNamed(context, Routing.mainPage);
                })
          ],
        ),
      ),
    );
  }
}
