import 'package:flutter/material.dart';


class TaskTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          'Buy milk',
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
        trailing: Checkbox(
          value: false,
        ));
  }
}
