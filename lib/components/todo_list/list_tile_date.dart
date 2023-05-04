import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo2/sys/utils/datetime.dart';

import '../../model/table/todo_table.dart';
import '../../sys/config/theme.dart';

class TodoListTileDate extends StatelessWidget {
  const TodoListTileDate({super.key});

  @override
  Widget build(BuildContext context) {
    final todo = context.watch<Todo>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          dateToString(todo.deadline),
          style: ThemeCfg.styleListTileLabel(context),
          maxLines: 1,
        ),
        Text(
          dateToString(todo.completedAt),
          style: ThemeCfg.styleListTileLabel(context),
          maxLines: 1,
        )
      ],
    );
  }
}
