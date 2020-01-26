import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/screens/task_screen.dart';
import 'models/task_data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          accentColor: Colors.lightBlueAccent,
          scaffoldBackgroundColor: Colors.lightBlueAccent,
          iconTheme: IconThemeData(color: Colors.white),
          textTheme: TextTheme(body1: TextStyle(color: Colors.white)),
        ),
        home: TaskScreen(),
      ),
    );
  }
}
