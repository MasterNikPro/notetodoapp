import 'package:flutter/material.dart';
import 'package:notetodoapp/screens/provider/todo_add_model.dart';
import 'package:provider/provider.dart';

import '../../appbars/todo_appbars/todo_appbar.dart';

class TodoAddPAge extends StatefulWidget {
  const TodoAddPAge({Key? key}) : super(key: key);

  @override
  State<TodoAddPAge> createState() => _TodoAddPAgeState();
}

class _TodoAddPAgeState extends State<TodoAddPAge> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  TodoAppBar(context),
      body: Consumer<TodoAddModel>(
        builder: (context,TodoAddModel,child){
          return ListView.builder(itemBuilder:)
        },
      ),
    );
  }
}
