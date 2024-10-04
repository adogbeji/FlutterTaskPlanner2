import 'package:flutter/material.dart';
import 'package:task_planner_2/models/task.dart';

class NewTask extends StatefulWidget {
  const NewTask(this.onAddTask, {super.key});

  final void Function(Task task) onAddTask;

  @override
  State<NewTask> createState() => _NewTaskState();
}

class _NewTaskState extends State<NewTask> {
  final _nameController = TextEditingController();
  Category _selectedCategory = Category.leisure;

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8),
      child: Column(
        children: [
          TextField(),
        ],
      ),
    );
  }
}