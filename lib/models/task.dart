import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

const uuid = Uuid();

final formatter = DateFormat.yMMMd();

enum Category { food, leisure, work, travel }

class Task {
  Task({required this.title, required this.date, required this.category}): id = uuid.v4();

  final String id;
  final String title;
  final DateTime date;
  final Category category;

  String get formattedDate {
    return formatter.format(date);
  }
}