import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/tasks_data.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
            isChecked: Provider.of<TaskData>(context).tasks[index].isDone,
            title: Provider.of<TaskData>(context).tasks[index].name,
            toggleCheckboxState: (bool checkboxState) {
              // setState(() {
              //   Provider.of<TaskData>(context).tasks[index].isDone =
              //       checkboxState;
              // });
            },
          );
        },
        itemCount: Provider.of<TaskData>(context).tasks.length);
  }
}
