import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {

  final Function addTaskCallback;

  AddTaskScreen({this.addTaskCallback});

  @override
  Widget build(BuildContext context) {
    String newTaskTitle;
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            "Add Task",
            style: TextStyle(fontSize: 30, color: Colors.lightBlueAccent),
            textAlign: TextAlign.center,
          ),
          TextField(
            textAlign: TextAlign.center,
            autofocus: true,
            onChanged: (newText){
                newTaskTitle =newText;
            },
          ),
          FlatButton(
            child: Text(
              "Add",
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.lightBlueAccent,
            onPressed: (){
              addTaskCallback(newTaskTitle);
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
