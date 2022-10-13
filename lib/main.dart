import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:notetodoapp/screens/main_screeen.dart';
import 'package:notetodoapp/screens/provider/main_screen_model.dart';
import 'package:provider/provider.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async{
  await Hive.initFlutter();
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(
        create: (_) => MainScreenModel(),
      )],
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
