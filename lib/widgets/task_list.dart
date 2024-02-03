import 'package:flutter/cupertino.dart';
import 'package:todoey/widgets/task_tile.dart';
import 'package:todoey/models/task.dart';

class TaskList extends StatefulWidget {

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {

  List<Task> tasks  = [
    Task(name: 'Buy milk'),
    Task(name: 'Leave family')
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, position){
        return TaskTile(title: tasks[position].name,
                        isChecked: tasks[position].isDone,
                        onPress: (value){
                          setState(() {
                            tasks[position].toggleDone();
                          });
                        });

      },
    );
  }
}