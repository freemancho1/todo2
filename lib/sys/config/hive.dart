import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import '../../model/table/todo_table.dart';
import '../../sys/config/logger.dart';

class HiveCfg {
  static const tableNameTodo = 'todos';
  static const tableIdTodo = 1;
}

Future<void> hiveInit() async {
  await Hive.initFlutter();

  final appDocumentDir =
    await path_provider.getApplicationDocumentsDirectory();
  appLog.fine('HiveDir: [${appDocumentDir.path}]');
  Hive.init(appDocumentDir.path);

  Hive.registerAdapter(TodoAdapter());

  await Hive.openBox<Todo>(HiveCfg.tableNameTodo);
}