import 'package:conspiratus/model/Settings.dart';
import 'package:flutter/material.dart';
import 'package:conspiratus/layout/BeginGamePage.dart';
import 'package:conspiratus/layout/CreateGamePage.dart';
import 'package:conspiratus/layout/JoinToGamePage.dart';
import 'package:conspiratus/routing/routing.dart';
import 'package:provider/provider.dart';
import 'package:conspiratus/model/Settings.dart';
import 'package:conspiratus/layout/WaitingForGamePage.dart';

class RootMaterialApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Settings()),
      ],
    child: MaterialApp(
      title: 'Conspiratus',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Routing.mainPage,
      routes: {
        Routing.mainPage: (context) => BeginGamePage(),
        Routing.createGamePage: (context) => CreateGamePage(),
        Routing.joinToGamePage: (context) => JoinToGamePage(),
        Routing.waitingForGamePage: (context) => WaitingForGamePage()
      },
    ),
    );
    // MaterialApp(
    //   title: 'Conspiratus',
    //   theme: ThemeData(
    //     primarySwatch: Colors.blue,
    //   ),
    //   initialRoute: Routing.mainPage,
    //   routes: {
    //     Routing.mainPage: (context) => BeginGamePage(),
    //     Routing.createGamePage: (context) => CreateGamePage(),
    //     Routing.joinToGamePage: (context) => JoinToGamePage(),
    //   },
    // );
  }
}
