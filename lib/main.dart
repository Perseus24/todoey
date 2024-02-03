import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:todoey/screens/tasks_screen.dart';
import 'package:provider/provider.dart';

import 'models/task.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Data())
      ],
      child: MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TasksScreen(),
    );
  }
}

class Data with ChangeNotifier{

  List<Task> _tasks  = [
    Task(name: 'Buy milk'),
    Task(name: 'Leave family')  
  ];

  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks);
  }

  void addTasks(Task task){
    _tasks.add(task);
    notifyListeners();
  }

  void updateTasks(Task task){
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }

}



