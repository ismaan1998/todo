import 'package:flutter/material.dart';
import 'package:todo/widgets/task_tile.dart';

class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding:
      EdgeInsets.only(top: 50, left: 30, bottom: 20, right: 30),
      children: <Widget>[
        TaskTile(title: "First task",),
        TaskTile(title: "Second task",),
      ],
    );
  }
}