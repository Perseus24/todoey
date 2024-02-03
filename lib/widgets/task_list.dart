import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:todoey/widgets/task_tile.dart';
import 'package:todoey/models/task.dart';

import '../main.dart';

class TaskList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<Data>(
      builder: (context, taskData, child){
        return ListView.builder(
          itemCount: taskData.tasks.length,
          itemBuilder: (context, position){
            return TaskTile(title: taskData.tasks[position].name,
                isChecked: taskData.tasks[position].isDone,
                onPress: (value){
                  taskData.updateTasks(taskData.tasks[position]);
                },
                deleteTile: (){
                  taskData.deleteTask(taskData.tasks[position]);

                },
            );
          },
        );
      },
    );
  }
}