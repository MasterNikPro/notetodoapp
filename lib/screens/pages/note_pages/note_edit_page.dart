import 'package:flutter/material.dart';
import 'package:notetodoapp/hive/hive_register.dart';
import 'package:notetodoapp/screens/appbars/note_appbars/note_edit_appbar.dart';
import 'package:notetodoapp/screens/provider/main_screen_model.dart';
import 'package:notetodoapp/screens/provider/note_screen_model.dart';

import '../../../assets/colors.dart';
import '../../../hive/hive_note_class.dart';
late TextEditingController titleEditingController=TextEditingController();
late TextEditingController textEditingController=TextEditingController();

class NoteEditPage extends StatelessWidget {
   NoteEditPage({Key? key}) : super(key: key);
  final Note _temp=noteBox.getAt(MainScreenModel().index);

  @override
  Widget build(BuildContext context) {
    titleEditingController.text=_temp.title;

    textEditingController.text=_temp.text;
    return Scaffold(
      appBar: NoteEditAppBar(context),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(
              top: 10,
              right: 10,
              left: 10,
              bottom: 5,
            ),
            color: darkBlue,
            child: TextField(
              controller:titleEditingController ,
              style: TextStyle(color: lightMarine, fontSize: 27),
              cursorColor: lightMarine,
              obscureText: false,
              decoration: InputDecoration(
                alignLabelWithHint: true,
                border: InputBorder.none,
                labelText: "Title",
                labelStyle:
                    TextStyle(color: lightMarine, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Divider(
            color: darkMarine,
            height: 1,
          ),
          Expanded(
            child: SizedBox(
              child: Container(
                padding: const EdgeInsets.only(
                  top: 10,
                  right: 10,
                  left: 10,
                  bottom: 5,
                ),
                color: darkBlue,
                child: TextField(
                  controller: textEditingController,
                  maxLines: 2000,
                  style: TextStyle(color: lightMarine, fontSize: 22),
                  cursorColor: lightMarine,
                  obscureText: false,
                  decoration: InputDecoration(
                    alignLabelWithHint: true,
                    focusedBorder: InputBorder.none,
                    border: InputBorder.none,
                    /*
                    border: const OutlineInputBorder(

                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),*/
                    labelText: "Text",
                    labelStyle: TextStyle(
                      color: lightMarine,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
