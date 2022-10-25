import 'package:flutter/material.dart';

import '../../../assets/colors.dart';
import '../../../hive/hive_register.dart';
import '../../../hive/hive_todo_class.dart';
import '../../provider/main_screen_model.dart';

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
            Todo temp=todoBox.getAt(index);
          return Dismissible(
            key: ValueKey<int>(todoBox.length),
            onDismissed: (DismissDirection direction) {
              MainScreenModel().delete(index,2);
            },
            child: Container(

              margin: const EdgeInsets.only(top: 10,right: 5,left: 5,bottom: 0),
              //padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,

                    color: lightMarine,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(20))
              ),
              //color: darkMarine,
              child: ListTile(
                onTap: (){
                  MainScreenModel().edit(context, index,type);
                },
                title: Text(
                  "temp.title",
                  style: TextStyle(color: lightMarine),
                ),
              ),
            ),
          );
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
