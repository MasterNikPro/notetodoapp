import 'package:flutter/material.dart';

import '../../../assets/colors.dart';
AppBar TodoAppBar(BuildContext context) {
  return AppBar(
    elevation: 0,
    backgroundColor: darkBlue,
    leading: IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
      },
    ),
    actions: [
      IconButton(
          onPressed: () {
          },
          icon: const Icon(Icons.check)),
      IconButton(onPressed: () {}, icon: const Icon(Icons.share))
    ],
    // title: Text("app"),
  );
}