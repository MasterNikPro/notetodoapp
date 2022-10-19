import 'package:flutter/material.dart';
import 'package:notetodoapp/screens/appbars/note_add_appbar.dart';

import '../../assets/colors.dart';

class NoteAddPage extends StatelessWidget {
  const NoteAddPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: noteaddAppBar(context),
      body: Container(
        color: darkBlue,
        child: Row(
          children: [ TextField(),  TextField()],
        ),
      ),
    );
  }
}
