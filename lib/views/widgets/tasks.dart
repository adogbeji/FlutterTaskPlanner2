import 'package:flutter/material.dart';
import 'package:task_planner_2/models/task.dart';

class Tasks extends StatefulWidget {
  const Tasks({super.key});

  @override
  State<Tasks> createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
  final List<Task> _registeredTasks = [];

  var activeScreen = 'start-screen';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task Planner',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Center(
          child: Text('Tasks Widget'),
        ),
      ),
    );
  }
}