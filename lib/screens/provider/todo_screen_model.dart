import 'package:flutter/material.dart';

class TodoScreenModel with ChangeNotifier {
  void add() {
    notifyListeners();
  }

  void delete() {
    notifyListeners();
  }

  void change() {}
}
