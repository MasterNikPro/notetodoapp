import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:notetodoapp/assets/colors.dart';
import 'package:notetodoapp/screens/provider/main_screen_model.dart';
import 'package:toggle_switch/toggle_switch.dart';

AppBar mainScreenAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: darkBlue,
    elevation: 0,
    leading: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.menu,
          color: lightMarine,
        )),
    actions: [
      Container(
        padding: const EdgeInsets.only(top: 10, bottom: 10, right: 50),
        child: ToggleSwitch(
          minWidth: 100,
          cornerRadius: 25,
          activeBgColors: [
            [darkMarine],
            [lightMarine]
          ],
          onToggle: (index)  {
           // print("posted" + index.toString());
            context.read<MainScreenModel>().changeType(index!);
          },
          initialLabelIndex: 0,
          totalSwitches: 2,
          labels: const ['Notes', 'ToDo'],
          customTextStyles: [
            TextStyle(
                color: lightMarine,
                fontSize: 18.0,
                fontWeight: FontWeight.w800),
            TextStyle(
                color: darkMarine, fontSize: 16.0, fontWeight: FontWeight.w800)
          ],
        ),
      ),
      IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search,
            color: lightMarine,
          ))
    ],
  );
}
