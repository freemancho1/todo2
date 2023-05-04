import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../components/common/center_text_widget.dart';
import '../model/table/todo_table.dart';
import '../model/view/todobox_view_model.dart';
import '../sys/config/constants.dart';
import '../sys/config/theme.dart';
import '../components/todo_list/list_view.dart';

class TodoListScreen extends StatelessWidget {
  const TodoListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Todo> todos = context.watch<TodoBoxViewModel>().getTodos;

    return Scaffold(
      appBar: AppBar(
        title: const Text(ConstCfg.textTodoListAppbarTitle),
        actions: [
          IconButton(
            onPressed: () => context.go('/test'),
            icon: const Icon(Icons.gps_fixed_outlined),
          )
        ],
      ),
      body: todos.isEmpty
        ? CenterTextWidget(
            message: ConstCfg.textTodoListNothingTodo,
            style: ThemeCfg.styleEmptyList(context),
          )
        : const Padding(
            padding: EdgeInsets.only(
              top: ConstCfg.basePaddingSize * 2,
              left: ConstCfg.basePaddingSize,
              right: ConstCfg.basePaddingSize
            ),
            child: TodoListView(),
          ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.go('/new'),
        child: const Icon(Icons.add),
      ),
    );
  }
}
