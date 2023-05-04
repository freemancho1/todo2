import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../model/view/todobox_view_model.dart';
import '../../model/table/todo_table.dart';
import '../../sys/config/logger.dart';
import 'list_tile.dart';

class TodoListView extends StatelessWidget {
  const TodoListView({super.key});

  @override
  Widget build(BuildContext context) {
    List<Todo> todos = context.watch<TodoBoxViewModel>().getTodos;
    return ListView.builder(
      itemCount: todos.length,
      itemBuilder: (context, index) {
        final todo = todos[index];
        appLog.info('${todo.title}을 타일로 생성함.');

        return ChangeNotifierProvider.value(
          value: todo,
          child: const TodoListTile(),
        );
      },
    );
  }
}
