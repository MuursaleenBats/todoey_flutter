import 'package:flutter/material.dart';

class AddTasksScreen extends StatefulWidget {
  AddTasksScreen({required this.addTasks});
  final Function addTasks;

  @override
  State<AddTasksScreen> createState() => _AddTasksScreenState();
}

class _AddTasksScreenState extends State<AddTasksScreen> {
  late String taskTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Text(
                  "ADD TASK",
                  style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  ),
                ),
              ),
              TextField(
                autofocus: true,
                onChanged: (value) {
                  setState(() {
                    taskTitle = value;
                  });
                },
              ),
              TextButton(
                onPressed: () {
                  widget.addTasks(taskTitle);
                },
                child: Text(
                  "Add",
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                ),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll<Color>(Colors.lightBlueAccent),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
