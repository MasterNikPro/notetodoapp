import 'package:flutter/material.dart';
class MainScreenModel with ChangeNotifier {
  int _position = 0;
  int get position => _position;
  void changeType(int index) {
    _position = index;
    notifyListeners();
  }
}
