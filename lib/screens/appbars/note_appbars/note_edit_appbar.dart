import 'package:flutter/material.dart';
import 'package:notetodoapp/screens/pages/note_pages/note_edit_page.dart';
import 'package:notetodoapp/screens/provider/note_screen_model.dart';

import '../../../assets/colors.dart';
import '../../../hive/hive_note_class.dart';
import '../../../hive/hive_register.dart';
import '../../pages/note_pages/note_add_page.dart';
import '../../provider/main_screen_model.dart';

AppBar NoteEditAppBar(BuildContext context) {

  return AppBar(
    elevation: 0,
    backgroundColor: darkBlue,
    leading: IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {NoteScreenModel().back(context);
      },
    ),
    actions: [
      IconButton(
          onPressed: () {
            if (titleEditingController.text.isNotEmpty) {
              MainScreenModel().add(
                  context,
                  2,
                  Note(
                    id: noteBox.length-1,
                    text: textEditingController.text,
                    title: titleEditingController.text,
                  ));
            }

            textEditingController.text = "";
            titleEditingController.text = "";
          },
          icon: const Icon(Icons.check)),
      IconButton(onPressed: () {}, icon: const Icon(Icons.share))
    ],
    // title: Text("app"),
  );
}
