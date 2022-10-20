import 'package:flutter/material.dart';
import 'package:notetodoapp/hive/hive_register.dart';
import 'package:notetodoapp/screens/main_screeen.dart';
import 'package:notetodoapp/screens/pages/note_pages/note_add_page.dart';
import 'package:notetodoapp/screens/pages/note_pages/note_edit_page.dart';
import 'package:notetodoapp/screens/provider/main_screen_model.dart';
import 'package:notetodoapp/screens/provider/note_screen_model.dart';
import 'package:notetodoapp/screens/provider/todo_page_model.dart';
import 'package:notetodoapp/screens/provider/todo_screen_model.dart';
import 'package:provider/provider.dart';

void main() async {
  hiveRegister();


  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<MainScreenModel>(
          create: (_) => MainScreenModel(),
        ),
        ChangeNotifierProvider<NoteScreenModel>(
            create: (_) => NoteScreenModel()),
        ChangeNotifierProvider<TodoScreenModel>(
            create: (_) => TodoScreenModel()),
        ChangeNotifierProvider<TodoPageModel>(create: (_) => TodoPageModel()),
      ],
      child: const AppMain(),
    ),
  );
}

class AppMain extends StatelessWidget {
  const AppMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        '/': (context) => const MainScreen(),
        '/note_add_page':(context)=> NoteAddPage(),
        '/note_edit_page':(context)=> NoteEditPage(),
      },
    );
  }
}
