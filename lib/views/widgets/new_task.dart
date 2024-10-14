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
  DateTime? _selectedDate;
  
  // Shows Datepicker
  _openDatePicker() async {
    final today = DateTime.now();
    final firstDate = DateTime(today.year - 1, today.month, today.day);
    final lastDate = DateTime(today.year, today.month, today.day + 3);
    final defaultDate = DateTime(today.year, today.month, today.day);
    // final defaultDate = today;


    final pickedDate = await showDatePicker(
      context: context, 
      firstDate: firstDate, 
      lastDate: lastDate,
      initialDate: defaultDate
    );
    setState(() {
      _selectedDate = pickedDate;
    });
  }

  // Saves New Tasks
  void _addNewTask() {
    print(_nameController.text);
    print(_selectedDate);


    if (_nameController.text.trim().isEmpty || _selectedDate == null) {
      // Show Error Message
    }
  }

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
            Text(_selectedDate == null ? 'No date selected!': formatter.format(_selectedDate!),),
            IconButton(
              onPressed: _openDatePicker,
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

              const Spacer(),
              
              TextButton(
                onPressed: () {},
                child: const Text('Cancel'),
              ),
              ElevatedButton(
                onPressed: _addNewTask,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple.shade200,
                ),
                child: const Text('Save'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
