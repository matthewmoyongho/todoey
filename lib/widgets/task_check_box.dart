//import 'dart:ffi';
//import 'dart:html';

import 'package:flutter/material.dart';

class TaskCheckBox extends StatelessWidget {
  final bool? isCheched;
  final void Function(bool?)? onPressed;

  TaskCheckBox({this.isCheched, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isCheched,
      onChanged: onPressed!,
      activeColor: Colors.lightBlueAccent,
    );
  }
}
