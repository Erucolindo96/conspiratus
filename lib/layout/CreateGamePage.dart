import 'package:conspiratus/routing/routing.dart';
import 'package:flutter/material.dart';
import 'package:conspiratus/layout/RowTextInput.dart';

class CreateGamePage extends StatelessWidget {
  final String title = 'Conspiratus';

  CreateGamePage() : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: Center(
        child: Column(
          children: [
            RowTextInput("Nazwa gracza"),
            RowTextInput("Nazwa gry"),
            RowTextInput("Maksymalna ilośc graczy"),
            Row(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Routing.waitingForGamePage);
                  },
                  child: Text("Stwórz grę"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
