import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:todo_app/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Buy Tesla'),
    Task(name: 'Refactor Higia'),
    Task(name: 'Be greater'),
    Task(name: 'Be greater'),
  ];

  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);

  int get taskCount {
    return _tasks.length;
  }

  void changeCheckBox(int index){
    _tasks[index].toggleDone();
    notifyListeners();
  }

  void addTasks(String task) {
    _tasks.add(Task(name: task));
    notifyListeners();
  }
}
