import 'package:flutter/material.dart';
import 'package:todo2/components/todo_list/list_tile_date.dart';
import '../../components/todo_list/list_tile_title.dart';
import '../../sys/config/constants.dart';
import 'list_tile_subtitle.dart';

class TodoListTile extends StatefulWidget {
  const TodoListTile({super.key});
  @override
  State<TodoListTile> createState() => _TodoListTileState();
}

class _TodoListTileState extends State<TodoListTile> {
  bool _isShowActionIcons = false;
  final FocusNode _focusNode = FocusNode();

  void toggleFocusNode() => _focusNode.requestFocus();

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: toggleFocusNode,
      /// 아래 두줄의 코드를 이용해 탭 클릭 이벤트를 표시 안되게 함
      /// 색상을 없에는 방법으로 처리함.
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      focusNode: _focusNode,
      onFocusChange: (isFocused) =>
          setState(() => _isShowActionIcons = isFocused),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TodoListTileTitle(isShowActionIcons: _isShowActionIcons,),
          const TodoListTileSubtitle(),
          const TodoListTileDate(),
          ConstCfg.gapHightMedium
        ],
      ),
    );
  }
}