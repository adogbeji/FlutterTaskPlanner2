import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key, required this.onStartTasks});

  final void Function() onStartTasks;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.lightBlue, Colors.green],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        child: Center(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('Task Planner', style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),),

                OutlinedButton(
                  onPressed: () {},
                  child: const Text('Start'),
                ),
              ],
            ),
          ),
      ),
    );
  }
}