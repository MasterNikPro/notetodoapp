import 'package:flutter/material.dart';
import 'package:notetodoapp/screens/pages/note_pages/note_add_page.dart';
import 'package:notetodoapp/screens/provider/main_screen_model.dart';

import '../../../assets/colors.dart';
import '../../../hive/hive_note_class.dart';
import '../../../hive/hive_register.dart';

class NotePage extends StatefulWidget {
  const NotePage({Key? key}) : super(key: key);

  @override
  State<NotePage> createState() => _NotePageState();
}

class _NotePageState extends State<NotePage> {
  @override
  Widget build(BuildContext context) {
    if (noteBox.length != 0) {
      return ListView.builder(
        itemBuilder: (context, index) {
          Note temp = noteBox.getAt(index);
          return Dismissible(
            key: ValueKey<int>(noteBox.length),
            onDismissed: (DismissDirection direction) {
              MainScreenModel().delete(index,1);
            },
            child: Container(

              margin: const EdgeInsets.only(top: 10,right: 5,left: 5,bottom: 0),
              //padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,

                  color: lightMarine,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(20))
              ),
              //color: darkMarine,
              child: ListTile(
                onTap: (){
                  MainScreenModel().edit(context,index,1);
                },
                title: Text(
                  temp.title,
                  style: TextStyle(color: lightMarine),
                ),
              ),
            ),
          );
        },
        itemCount: noteBox.length,
      );
    } else {
      return Container(
        color: darkBlue,
        alignment: Alignment.center,
        child: const Text(
          "Add new Note",
          style: TextStyle(color: Colors.white),
        ),
      );
    }
  }
}
