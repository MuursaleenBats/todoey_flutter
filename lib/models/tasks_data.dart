import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [];

  int get taskCount {
    return tasks.length;
  }

  void addTask(String title) {
    tasks.add(Task(name: title));
    notifyListeners();
  }

  void toggleCheckbox(int index, bool checkBoxState) {
    tasks[index].isDone = checkBoxState;
    notifyListeners();
  }

  void deleteTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}
