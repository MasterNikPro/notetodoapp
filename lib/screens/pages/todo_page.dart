import 'package:flutter/material.dart';

import '../../assets/colors.dart';
import '../../hive/hive_register.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({Key? key}) : super(key: key);

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  @override
  Widget build(BuildContext context) {
    if (todoBox.length != 0) {
      return ListView.builder(
        itemBuilder: (context, index) {
          return ListTile();
        },
        itemCount: todoBox.length,
      );
    } else {
      return Container(
        color: darkBlue,
        alignment: Alignment.center,
        child: const Text("Add new Todo",style: TextStyle(color: Colors.white),),
      );
    }
  }
}
