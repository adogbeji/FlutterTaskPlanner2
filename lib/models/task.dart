enum Category { food, leisure, work, travel }

class Task {
  Task({required this.title, required this.date, required this.category});

  final String id;
  final String title;
  final DateTime date;
  final Category category;
}