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
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          TextField(
            controller: _nameController,
            maxLength: 50,
            decoration: const InputDecoration(
              labelText: 'Name',
              hintText: 'Enter task name...',
            ),
          ),
          Row(children: [
            const Text('No date selected!'),
            IconButton(
              onPressed: () {
                print('Pressed');
              },
              icon: const Icon(Icons.calendar_month),
            ),
          ]),
          Row(
            children: [
              DropdownButton(
                value: _selectedCategory,
                items: Category.values
                    .map(
                      (category) => DropdownMenuItem(
                        value: category,
                        child: Text(category.name),
                      ),
                    )
                    .toList(),
                onChanged: (value) {
                  if (value == null) {
                    return;
                  }
                  setState(() {
                    _selectedCategory = value;
                  });
                },
              ),
              
              TextButton(
                onPressed: () {},
                child: const Text('Cancel'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Save'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
