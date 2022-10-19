import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notetodoapp/hive/hive_todo_class.dart';

import 'hive_note_class.dart';

late Box todoBox;
late Box noteBox;


void hiveRegister() async {
  //Hive.openBox<Todo>('todos');
  //box.putAt(box.length, Todo(id: 0, name: "lol1", tasks: ["", ""]));
  //Todo? lol = box.getAt(0);
  //lol.get(lol.values);
  //print(" "+lol!.name+" "+box.length.toString());

  await Hive.initFlutter();
   Hive.registerAdapter(TodoAdapter());
  Hive.registerAdapter(NoteAdapter());
  todoBox = await Hive.openBox<Todo>('todos');
  noteBox = await Hive.openBox<Note>('notes');
}
