import 'package:flutter/material.dart';

class NoteScreenModel with ChangeNotifier {
  void add() {
    notifyListeners();
  }

  void delete() {
    notifyListeners();
  }

  void change() {}
}
