import 'package:flutter/material.dart';

import 'package:task_planner_2/models/task.dart';
import 'package:task_planner_2/views/widgets/task_item.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key, required this.tasks, required this.onRemoveTask});

  final List<Task> tasks;
  final void Function(Task task) onRemoveTask;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return Dismissible(
          key: ValueKey(tasks[index]),
          onDismissed: (direction) {
            onRemoveTask(tasks[index]);
          },
          child: TaskItem(tasks[index]),
        );
      },
    );
  }
}
