import 'package:flutter/material.dart';

class NoteScreenModel with ChangeNotifier {
  void add(BuildContext context) {
    Navigator.pushReplacementNamed(context, '/note_add_page');
    notifyListeners();
  }
  void back(BuildContext context){
    Navigator.pop(context);
    notifyListeners();
  }

  void delete() {
    notifyListeners();
  }

  void change() {}
}
