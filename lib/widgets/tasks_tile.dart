import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;
  void checkBoxCallBack(value) {
    setState(() {
      isChecked = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Buy milk',
        style: TextStyle(
          color: Colors.black,
          fontSize: 25,
          decoration:
              isChecked ? TextDecoration.lineThrough : TextDecoration.none,
        ),
      ),
      trailing: TaskCheckbox(checkBoxState: isChecked, funct: checkBoxCallBack),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool checkBoxState;
  final Function funct;
  TaskCheckbox({@required this.checkBoxState, @required this.funct});
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      onChanged: funct,
      value: checkBoxState,
    );
  }
}
