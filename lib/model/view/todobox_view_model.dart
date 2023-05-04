import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../../model/table/todo_table.dart';
import '../../sys/config/hive.dart';

class TodoBoxViewModel extends ChangeNotifier {
  final Box<Todo> _todoBox = Hive.box<Todo>(HiveCfg.tableNameTodo);

  void add(Todo todo) => _add(todo);
  Future<void> _add(Todo todo) async {
    await _todoBox.add(todo);
    notifyListeners();
  }

  void remove(Todo todo) => _remove(todo);
  Future<void> _remove(Todo todo) async {
    todo.delete();
    notifyListeners();
  }

  List<Todo> get getTodos => _todoBox.values.toList().cast<Todo>();

}