import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key, required this.onStartTasks});

  final void Function() onStartTasks;

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Task Planner'),
          ],
        ),
      );
  }
}