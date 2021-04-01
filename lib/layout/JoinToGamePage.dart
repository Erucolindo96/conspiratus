import 'package:flutter/material.dart';
import 'package:conspiratus/layout/RowTextInput.dart';

class JoinToGamePage extends StatelessWidget {
  final String title = 'Conspiratus';

  JoinToGamePage() : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(this.title)),
      body: Center(
        child: Column(
          children: [RowTextInput('Nazwa gracza'), GameToJoinListWidget()],
        ),
      ),
    );
  }
}

class GameToJoinListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 200,
      child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text('Dostępne gry'),
            // Allows the user to reveal the app bar if they begin scrolling back
            // up the list of items.
            floating: true,
            // Display a placeholder widget to visualize the shrinking size.
            flexibleSpace: Placeholder(),
            // Make the initial height of the SliverAppBar larger than normal.
            expandedHeight: 200,
          ),
        ],
      ),
    );
  }
}
