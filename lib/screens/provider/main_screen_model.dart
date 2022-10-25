import 'package:flutter/material.dart';
import 'package:notetodoapp/screens/pages/note_pages/note_edit_page.dart';
import 'package:notetodoapp/screens/provider/note_screen_model.dart';
import 'package:notetodoapp/screens/provider/todo_screen_model.dart';

import '../../hive/hive_note_class.dart';
import '../../hive/hive_register.dart';
class MainScreenModel with ChangeNotifier {
   int _index=0;
  int _position = 0;
  int get position => _position;
  void changeType(int index) {
    _position = index;
    notifyListeners();
  }
  void add(BuildContext context,int type,var obj){
    if(type==1)
      {
        noteBox.add(obj);
      }
      if(type==2)
        {Note _temp=obj;
          noteBox.putAt(_temp.id, obj);
        }
    Navigator.pushReplacementNamed(context, '/');
}
void delete(int index,int type){
    if(type==1)
    {
      noteBox.deleteAt(index);
      NoteScreenModel().delete();
    }
    if(type==2)
      {
        todoBox.deleteAt(index);
        TodoScreenModel().delete();
      }

  notifyListeners();
}
void edit(BuildContext context,int index,int type){
    if(type==1)
      {
        _index=index;
        Navigator.pushReplacementNamed(context,'/note_edit_page');
      }else{
      _index=index;
      Navigator.pushReplacementNamed(context,'/note_edit_page');
    }


}

int get index=> _index;
}
