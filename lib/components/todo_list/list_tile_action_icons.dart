import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../model/view/todobox_view_model.dart';
import '../../sys/config/constants.dart';
import '../../model/table/todo_table.dart';
import '../../sys/config/theme.dart';

class ListTileActionIcons extends StatelessWidget {
  final Todo todo;
  const ListTileActionIcons({super.key, required this.todo});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ConstCfg.heightActionIconContainer,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(ConstCfg.radiusActionIconContainer),
          bottomLeft: Radius.circular(ConstCfg.radiusActionIconContainer)
        ),
        color: ThemeCfg.getPrimaryColor(context),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.only(left: ConstCfg.basePaddingSize * 2),
            alignment: Alignment.center,
            child: InkResponse(
              onTap: () {},
              child: const Icon(
                ConstCfg.iconAdd,
                size: ConstCfg.sizeActionIcons,
                color: ConstCfg.colorActionIcons
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
              left: ConstCfg.basePaddingSize,
              right: ConstCfg.basePaddingSize * 2,
            ),
            alignment: Alignment.center,
            child: InkResponse(
              onTap: () =>
                context.read<TodoBoxViewModel>().remove(todo),
              child: const Icon(
                ConstCfg.iconDelete,
                size: ConstCfg.sizeActionIcons,
                color: ConstCfg.colorActionIcons
              ),
            ),
          )
        ],
      ),
    );
  }
}
