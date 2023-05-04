import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../../sys/config/hive.dart';

part 'todo_table.g.dart';

@HiveType(typeId: HiveCfg.tableIdTodo)
class Todo extends HiveObject with ChangeNotifier {
  @HiveField(0)
  String title;

  @HiveField(1)
  String subTitle;

  @HiveField(2)
  DateTime? deadline;

  @HiveField(3)
  bool isCompleted;

  @HiveField(4)
  DateTime? completedAt;

  @HiveField(5)
  List<Todo> todos;

  Todo({
    required this.title,
    this.subTitle = '',
    this.deadline,
    this.isCompleted = false,
    this.completedAt,
    this.todos = const [],
  });

  void toggleCompleted() {
    isCompleted = !isCompleted;
    completedAt =  isCompleted ? DateTime.now() : null;
    notifyListeners();
  }

  @override
  String toString() {
    return 'Todo('
        'title: $title, '
        'dead line: $deadline, '
        'isCompleted: $isCompleted, '
        'todos length: ${todos.length}'
        ')';
  }
}
