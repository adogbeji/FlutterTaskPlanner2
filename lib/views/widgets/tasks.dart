import 'package:flutter/material.dart';
import 'package:task_planner_2/models/task.dart';
import 'package:task_planner_2/views/screens/start_screen.dart';

class Tasks extends StatefulWidget {
  const Tasks({super.key});

  @override
  State<Tasks> createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
  final List<Task> _registeredTasks = [];

  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'tasks-screen';
    });
  }

  // Add Tasks
  void _addTask(Task task) {
    setState(() {
      _registeredTasks.add(task);
    });
  }

  @override
  Widget build(BuildContext context) {
    var screenWidget = StartScreen(onStartTasks: switchScreen);

    return MaterialApp(
      title: 'Task Planner',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: screenWidget,
    );
  }
}