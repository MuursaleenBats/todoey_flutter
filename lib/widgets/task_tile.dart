import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String title;
  final Function toggleCheckboxState;
  const TaskTile(
      {required this.isChecked,
      required this.title,
      required this.toggleCheckboxState});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: (value) {
            toggleCheckboxState(value);
          }),
    );
  }
}
