import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/tasks_data.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
            itemBuilder: (context, index) {
              return TaskTile(
                isChecked: taskData.tasks[index].isDone,
                title: taskData.tasks[index].name,
                toggleCheckboxState: (bool checkboxState) {
                  // setState(() {
                  //   Provider.of<TaskData>(context).tasks[index].isDone =
                  //       checkboxState;
                  // });
                },
              );
            },
            itemCount: taskData.taskCount);
      },
    );
  }
}
