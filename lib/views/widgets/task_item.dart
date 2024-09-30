import 'package:flutter/material.dart';
import 'package:task_planner_2/models/task.dart';

class TaskItem extends StatelessWidget {
  const TaskItem(this.task, {super.key});

  final Task task;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(task.title),
        Row(
          children: [
            Icon(categoryIcons[task.category]),
            Text(task.formattedDate),
          ],
        ),
      ],
    );
  }
}