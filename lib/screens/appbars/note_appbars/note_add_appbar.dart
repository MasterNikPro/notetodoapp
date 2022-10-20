import 'package:flutter/material.dart';
import 'package:notetodoapp/assets/colors.dart';
import 'package:notetodoapp/hive/hive_register.dart';
import 'package:notetodoapp/screens/pages/note_pages/note_add_page.dart';
import 'package:notetodoapp/screens/provider/main_screen_model.dart';

import '../../../hive/hive_note_class.dart';
import '../../provider/note_screen_model.dart';

AppBar noteaddAppBar(BuildContext context) {
  return AppBar(
    elevation: 0,
    backgroundColor: darkBlue,
    leading: IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        NoteScreenModel().back(context);
      },
    ),
    actions: [
      IconButton(
          onPressed: () {
            if (titleController.text.isNotEmpty) {
              MainScreenModel().add(
                  context,
                  1,
                  Note(
                    id: noteBox.length,
                    text: textController.text,
                    title: titleController.text,
                  ));
            }

            textController.text = "";
            titleController.text = "";
          },
          icon: const Icon(Icons.check)),
      IconButton(onPressed: () {}, icon: const Icon(Icons.share))
    ],
    // title: Text("app"),
  );
}
