import 'package:flutter/material.dart';
import 'package:notetodoapp/screens/appbars/note_appbars/note_add_appbar.dart';

import '../../../assets/colors.dart';
TextEditingController titleController=TextEditingController();
TextEditingController textController=TextEditingController();
class NoteAddPage extends StatelessWidget {


   NoteAddPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: noteaddAppBar(context),
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
              controller: titleController,
              style: TextStyle(color: lightMarine,fontSize: 27),
              cursorColor: lightMarine,
              obscureText: false,
              decoration: InputDecoration(
                alignLabelWithHint: true,
                border:InputBorder.none,

                labelText: "Title",
                labelStyle: TextStyle(color: lightMarine,fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Divider(color: darkMarine,height: 1,),
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
                  controller: textController,
                  maxLines: 2000,
                  style: TextStyle(color: lightMarine,fontSize: 22),
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
                    labelStyle: TextStyle(color: lightMarine,),
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
