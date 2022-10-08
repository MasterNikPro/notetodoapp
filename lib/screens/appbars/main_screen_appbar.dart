import 'package:flutter/material.dart';
import 'package:notetodoapp/assets/colors.dart';
import 'package:toggle_switch/toggle_switch.dart';

AppBar MainScreenAppBar() {
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
        padding: EdgeInsets.only(top:10,bottom: 10,right: 50),
        child: ToggleSwitch(
          minWidth: 100,
          cornerRadius: 25,
          activeBgColors: [
            [darkMarine],
            [lightMarine]
          ],
          // customTextStyles: [],
          //customHeights: [25,25],
          initialLabelIndex: 0,
          totalSwitches: 2,
          labels: const ['Notes', 'ToDo'],
          customTextStyles: const [
            TextStyle(
                color: Colors.brown, fontSize: 18.0, fontWeight: FontWeight.w900),
            TextStyle(
                color: Colors.black, fontSize: 16.0, fontStyle: FontStyle.italic)
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
