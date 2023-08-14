import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

class TasksList extends StatefulWidget {
  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'Buy Milk'),
    Task(name: 'Buy Egg'),
    Task(name: 'Buy Tomatoes'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
            isChecked: tasks[index].isDone,
            title: tasks[index].name,
            toggleCheckboxState: (bool checkboxState) {
              setState(() {
                tasks[index].isDone = checkboxState;
              });
            },
          );
        },
        itemCount: tasks.length);
  }
}
