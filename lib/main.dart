import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:notetodoapp/hive/hive_note_class.dart';
import 'package:notetodoapp/hive/hive_todo_class.dart';
import 'package:notetodoapp/screens/main_screeen.dart';
import 'package:notetodoapp/screens/provider/main_screen_model.dart';
import 'package:notetodoapp/screens/provider/note_screen_model.dart';
import 'package:notetodoapp/screens/provider/todo_screen_model.dart';
import 'package:provider/provider.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(TodoAdapter());
  Hive.registerAdapter(NoteAdapter());

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => MainScreenModel(),
        ),
        ChangeNotifierProvider(create: (_)=>NoteScreenModel()),
        ChangeNotifierProvider(create: (_)=>TodoScreenModel()),
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
      },
    );
  }
}
