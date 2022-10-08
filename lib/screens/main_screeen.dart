import 'package:flutter/material.dart';
import 'package:notetodoapp/assets/colors.dart';
import 'package:notetodoapp/screens/appbars/main_screen_appbar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainScreenAppBar(),
      body: Container(
        color: darkBlue,
      ),
    );
  }
}