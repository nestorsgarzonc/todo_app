import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/task_data.dart';
import 'package:todo_app/widgets/tasks_tile.dart';

class TasksList extends StatelessWidget {
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return GestureDetector(
              onLongPress: () => taskData.deleteTask(index),
              child: TaskTile(
                isChecked: taskData.tasks[index].isDone,
                task: taskData.tasks[index].name,
                checkBoxCallBack: (_) => taskData.changeCheckBox(index),
              ),
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
