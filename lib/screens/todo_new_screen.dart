import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../../components/todo_new/date_form_field.dart';
import '../../components/todo_new/string_form_field.dart';
import '../../model/table/todo_table.dart';
import '../../model/view/todobox_view_model.dart';
import '../../sys/config/constants.dart';

class TodoNewScreen extends StatefulWidget {
  const TodoNewScreen({super.key});
  @override
  State<TodoNewScreen> createState() => _TodoNewScreenState();
}

class _TodoNewScreenState extends State<TodoNewScreen> {
  final _formKey = GlobalKey<FormState>();

  String title = '';
  String subTitle = '';
  DateTime? deadline;

  void changeTitle(String value) => title = value;
  void changeSubTitle(String value) => subTitle = value;
  void changeDeadline(DateTime? value) => deadline = value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(ConstCfg.textNewTodoAppbarTitle),
        actions: [
          TextButton(
            onPressed: () {
              if (title.isNotEmpty) {
                context.read<TodoBoxViewModel>().add(
                  Todo(title: title, subTitle: subTitle, deadline: deadline));
              }
              context.pop();
            },
            child: const Text(
              ConstCfg.textSave,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(ConstCfg.basePaddingSize),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              StringFormField(
                valueKey: 0,
                prefixIcon: Icons.menu_open,
                labelText: ConstCfg.textNewTodoTitleHint,
                changeAction: changeTitle,
              ),
              ConstCfg.gapHightSmall,
              StringFormField(
                valueKey: 1,
                prefixIcon: Icons.edit_note,
                labelText: ConstCfg.textNewTodoSubTitleHint,
                changeAction: changeSubTitle
              ),
              ConstCfg.gapHightSmall,
              DateFormField(
                valueKey: 2,
                prefixIcon: Icons.calendar_month,
                suffixIcon: Icons.close,
                labelText: ConstCfg.textNewTodoDeadlineHint,
                changeAction: changeDeadline,
              )
            ],
          ),
        ),
      ),
    );
  }
}
