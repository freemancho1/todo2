import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../model/table/todo_table.dart';
import '../../sys/config/theme.dart';

class TodoListTileSubtitle extends StatelessWidget {
  const TodoListTileSubtitle({super.key});

  @override
  Widget build(BuildContext context) {
    final todo = context.watch<Todo>();
    return Text(
      todo.subTitle,
      style: ThemeCfg.styleListTileSubtitle(context),
      maxLines: null,
    );
  }
}
