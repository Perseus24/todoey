

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {

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
              autofocus: true,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20,),
            TextButton(
              onPressed: (){

              },
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
