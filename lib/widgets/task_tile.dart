import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_check_box.dart';

class TaskTile extends StatefulWidget {
  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool? isChecked = false;
  late bool decorate;

  // TextStyle textDecoration() {
  //   if (isChecked == null) {
  //     return TextStyle(decoration: TextDecoration.lineThrough);
  //   } else {
  //     return TextStyle(decoration: TextDecoration.none); ;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text('Do this'),
      trailing: TaskCheckBox(
        isCheched: isChecked,
        onPressed: (val) {
          setState(() {
            isChecked = val;
          });
        },
      ),
    );
  }
}
