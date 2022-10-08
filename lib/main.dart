import 'package:flutter/material.dart';
import 'package:notetodoapp/screens/main_screeen.dart';

void main() {
  runApp(AppMain());
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
