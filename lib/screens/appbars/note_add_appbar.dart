import 'package:flutter/material.dart';
import 'package:notetodoapp/assets/colors.dart';

import '../provider/note_screen_model.dart';

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
    actions: [IconButton(onPressed: (){}, icon: const Icon(Icons.share))],
    // title: Text("app"),
  );
}
