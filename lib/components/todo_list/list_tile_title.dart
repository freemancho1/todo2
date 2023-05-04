import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../components/todo_list/list_tile_action_icons.dart';
import '../../sys/config/constants.dart';
import '../../sys/config/theme.dart';
import '../../model/table/todo_table.dart';

class TodoListTileTitle extends StatelessWidget {
  final bool isShowActionIcons;
  const TodoListTileTitle({
    super.key,
    required this.isShowActionIcons,
  });

  @override
  Widget build(BuildContext context) {
    final todo = context.watch<Todo>();
    return Container(
      // color: isShowActionIcons ? Colors.teal[50]
      //   : Theme.of(context).colorScheme.onBackground,
      height: 40,
      decoration: isShowActionIcons
        ? const BoxDecoration(
            border: Border(
              top: BorderSide(color: Colors.teal, width: 1),
              bottom: BorderSide(color: Colors.teal, width: 1),
            )
          )
        : null,
      padding: const EdgeInsets.only(left: ConstCfg.basePaddingSize,),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                top: ConstCfg.basePaddingSize,
                bottom: ConstCfg.basePaddingSize,
              ),
              child: Text(
                todo.title,
                style: todo.isCompleted
                  ? ThemeCfg.styleListTileTitleCompleted(context)
                  : ThemeCfg.styleListTileTitle(context),
                maxLines: 1,
              ),
            )
          ),
          if (isShowActionIcons)
            ListTileActionIcons(todo: todo),
        ],
      ),
    );
  }
}
