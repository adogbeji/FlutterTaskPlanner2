import 'package:flutter/material.dart';

import 'package:task_planner_2/models/task.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({super.key, required this.tasks, required this.onAddTask, required this.onRemoveTask});

  final List<Task> tasks;
  final void Function(Task task) onAddTask;
  final void Function(Task task) onRemoveTask;

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Tasks Screen'),
      ),
    );
  }
}