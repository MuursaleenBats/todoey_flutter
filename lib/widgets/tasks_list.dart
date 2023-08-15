import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

class TasksList extends StatefulWidget {
  TasksList(this.tasks);
  final List<Task> tasks;

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
            isChecked: widget.tasks[index].isDone,
            title: widget.tasks[index].name,
            toggleCheckboxState: (bool checkboxState) {
              setState(() {
                widget.tasks[index].isDone = checkboxState;
              });
            },
          );
        },
        itemCount: widget.tasks.length);
  }
}
