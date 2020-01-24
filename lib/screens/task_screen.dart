import 'package:flutter/material.dart';
import 'package:todo_app/widgets/tasks_list.dart';

class TaskScreen extends StatefulWidget {
  @override
  _TaskScreenState createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add, color: Colors.white),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          topDesign(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35),
              color: Colors.white,
            ),
            height: 600,
            child: TasksList(),
          ),
        ],
      ),
    );
  }

  Container topDesign() {
    return Container(
      padding: EdgeInsets.only(top: 60, bottom: 30, left: 30, right: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          CircleAvatar(
            child: Icon(Icons.list, color: Colors.lightBlueAccent, size: 30),
            backgroundColor: Colors.white,
            radius: 30,
          ),
          SizedBox(height: 30),
          Text(
            'TODO APP',
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.w900),
          ),
          Text(
            '12 tasks',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}

