import 'package:flutter/material.dart';

import '../../assets/colors.dart';
import '../../hive/hive_register.dart';

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
          return ListTile();
        },
        itemCount: noteBox.length,
      );
    } else {
      return Container(
        color: darkBlue,
        alignment: Alignment.center,
        child: const Text("Add new Note",style: TextStyle(color: Colors.white),),
      );
    }
  }
}
