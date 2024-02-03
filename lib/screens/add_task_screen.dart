

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task.dart';

import '../main.dart';

class AddTaskScreen extends StatelessWidget {

  TextEditingController controller = TextEditingController();
  
  late final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.only(top: 20, left: 20, right: 20),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Text(
                'Add Task',
                style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: 30,
                    fontWeight: FontWeight.w700
                ),
              ),
            ),
            TextField(
              controller: controller,
              autofocus: true,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20,),
            TextButton(
              onPressed: (){
                context.read<Data>().addTasks(Task(name: controller.text));
                Navigator.of(context).pop();
              } ,
              style: TextButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero
                )
              ),
              child: Text('Add',
                style: TextStyle(
                  color: Colors.white
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}
