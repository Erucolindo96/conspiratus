import 'package:conspiratus/model/AppMode.dart';
import 'package:flutter/material.dart';
import 'package:conspiratus/routing/routing.dart';
import 'package:conspiratus/ConspiratusApp.dart';
import 'package:provider/provider.dart';
import 'package:conspiratus/model/Settings.dart';

class BeginGamePage extends StatelessWidget {
  final String title = 'Conspiratus';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: [
          Center(
              child: TextButton(
                  child: Text("Załóż grę LAN"),
                  onPressed: () {
                    Provider.of<Settings>(context, listen: false).appMode = AppMode.MASTER;
                    Navigator.pushNamed(context, Routing.createGamePage);
                    print(Provider.of<Settings>(context, listen: false).appMode);
                  })),
          Center(
              child: TextButton(
                  child: Text("Dołącz do gry LAN"),
                  onPressed: () {
                    Provider.of<Settings>(context, listen: false).appMode = AppMode.CLIENT;
                    Navigator.pushNamed(context, Routing.joinToGamePage);
                    print(Provider.of<Settings>(context, listen: false).appMode);
                  })),
        ],
      ),
    );
  }
}
