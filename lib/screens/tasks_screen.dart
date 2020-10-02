import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 60, left: 30, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  child: Icon(
                    Icons.list,
                    color: Colors.lightBlueAccent,
                    size: 30,
                  ),
                  backgroundColor: Colors.white,
                  radius: 30,
                ),
                SizedBox(height:10),
                Text("Todo",
                style: TextStyle(
                  color:Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 50
                ),),
                Text(
                  '12 tasks',
                  style: TextStyle(
                    color:Colors.white,
                    fontSize: 18
                  ),
                ),

              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top:20),

              decoration: BoxDecoration(
                  color:Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight:  Radius.circular(20))
              ),
            ),
          ),
        ],
      ),
    );
  }
}
