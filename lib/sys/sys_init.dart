import '../../sys/config/hive.dart';
import '../../sys/config/logger.dart';
import '../../sys/config/window.dart';

Future<void> sysInit() async {
  loggerInit();
  setupWindow();
  await hiveInit();
}