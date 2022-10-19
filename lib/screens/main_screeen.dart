import 'package:flutter/material.dart';
import 'package:notetodoapp/assets/colors.dart';
import 'package:notetodoapp/screens/appbars/main_screen_appbar.dart';
import 'package:notetodoapp/screens/pages/note_page.dart';
import 'package:notetodoapp/screens/pages/todo_page.dart';
import 'package:notetodoapp/screens/provider/main_screen_model.dart';
import 'package:notetodoapp/screens/provider/note_screen_model.dart';
import 'package:notetodoapp/screens/provider/todo_screen_model.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late int type;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: mainScreenAppBar(context),
        body: Consumer<MainScreenModel>(
          builder: (context, position, child) {
            //print("posted"+position.toString());
            if (position.position == 0) {
              type=position.position;
              return Consumer<NoteScreenModel>(
                builder: (context, notemodel, child) {
                  return Container(
                    color: darkBlue,
                    child:   NotePage(),
                  );
                },
              );
            } else {
              type=position.position;
              return Consumer<TodoScreenModel>(
                builder: (context, todomodel, child) {
                  return Container(
                    color: darkBlue,
                    child:  TodoPage(),
                  );
                },
              );
            }
          },
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: lightBlue,
          child: Icon(Icons.add,color: darkBlue,),
          onPressed: () {
            if(type==0){
            NoteScreenModel().add(context);
            }
          },
        ));
  }
}
