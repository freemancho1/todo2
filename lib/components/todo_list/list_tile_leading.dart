import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../model/table/todo_table.dart';

class TodoListTileLeading extends StatelessWidget {
  const TodoListTileLeading({super.key});

  @override
  Widget build(BuildContext context) {
    final todo = context.watch<Todo>();
    return IconButton(
      onPressed: () {
        todo.toggleCompleted();
        todo.save();
      },
      icon: todo.isCompleted
        ? const Icon(Icons.check_circle_outline)
        : const Icon(Icons.circle_outlined),
      iconSize: 20,
    );
  }
}
