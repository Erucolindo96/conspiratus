import 'package:flutter/material.dart';
import 'package:conspiratus/model/AppMode.dart';

class Settings with ChangeNotifier {
  AppMode? _appMode;
  int _citizenCount = 0;
  int _mafiaCount = 0;
  int _policemanCount = 0;


  AppMode? get appMode => _appMode;

  Settings();

  set appMode(AppMode? value) {
    _appMode = value;
    notifyListeners();
  }

  int get policemanCount => _policemanCount;

  set policemanCount(int value) {
    _policemanCount = value;
    notifyListeners();
  }

  int get mafiaCount => _mafiaCount;

  set mafiaCount(int value) {
    _mafiaCount = value;
    print('Mafia count: $_mafiaCount');
    notifyListeners();
  }

  int get citizenCount => _citizenCount;

  set citizenCount(int value) {
    _citizenCount = value;
    notifyListeners();
  }
}
