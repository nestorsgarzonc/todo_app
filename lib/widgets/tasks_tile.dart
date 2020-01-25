import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String task;
  final Function checkBoxCallBack;
  TaskTile({this.task, this.isChecked, this.checkBoxCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        task,
        style: TextStyle(
          color: Colors.black,
          fontSize: 25,
          decoration:
              isChecked ? TextDecoration.lineThrough : TextDecoration.none,
        ),
      ),
      trailing: Checkbox(
        onChanged: checkBoxCallBack,
        value: isChecked,
      ),
    );
  }
}
