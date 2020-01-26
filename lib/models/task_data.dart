import 'package:flutter/material.dart';
import 'package:todo_app/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy Tesla'),
    Task(name: 'Refactor Higia'),
    Task(name: 'Be greater'),
    Task(name: 'Be greater'),
  ];

  int get taskCount {
    return tasks.length;
  }

  void addTasks(Task task) {
    tasks.add(task);
    notifyListeners();
  }
}
