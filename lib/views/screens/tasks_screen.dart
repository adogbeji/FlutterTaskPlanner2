import 'package:flutter/material.dart';

import 'package:task_planner_2/models/task.dart';
import 'package:task_planner_2/views/widgets/new_task.dart';
import 'package:task_planner_2/views/widgets/tasks_list.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({super.key, required this.tasks, required this.onAddTask, required this.onRemoveTask});

  final List<Task> tasks;
  final void Function(Task task) onAddTask;
  final void Function(Task task) onRemoveTask;

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  void _openModal() {
    showModalBottomSheet(context: context, builder: (context) => NewTask(widget.onAddTask),);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: const Text('Tasks Screen'),
        actions: [
          InkWell(
            onTap: _openModal,
            child: const Icon(Icons.add),
          ),
        ],
      ),
      body: widget.tasks.isEmpty ? const Center(
        child: Text('No Tasks!'),
      ): TasksList(tasks: widget.tasks, onRemoveTask: widget.onRemoveTask),
    );
  }
}