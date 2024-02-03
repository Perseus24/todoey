

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoey/screens/add_task_screen.dart';

import '../models/task.dart';
import '../widgets/task_list.dart';

class TasksScreen extends StatefulWidget {


  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {

  TextEditingController addTaskText = TextEditingController();

  List<Task> tasks  = [
    Task(name: 'Buy milk'),
    Task(name: 'Leave family')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add, color: Colors.white,),
        onPressed: (){
          showModalBottomSheet(
            isScrollControlled: true,
           context: context,
           builder: (context) => SingleChildScrollView(
             child: Container(
               padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
               child: AddTaskScreen(
                 onPress: () {
                   print(addTaskText.toString());
                   setState(() {
                     tasks.add(Task(name: addTaskText.text));
                     Navigator.pop(context);
                   });
                 },
                 controller: addTaskText,
               )))
          );

        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.list, size: 30, color: Colors.lightBlueAccent,)
                ),
                SizedBox(height: 10,),
                Text(
                  'Todoey',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.w700
                  ),
                ),
                Text(
                  '${tasks.length} Tasks',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              ),
              child: TaskList(tasks)
            ),
          )
        ],
      ),
    );
  }
}



