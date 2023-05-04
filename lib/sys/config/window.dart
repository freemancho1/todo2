import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../sys/config/constants.dart';
import 'package:window_size/window_size.dart';

void setupWindow() {
  /// 웹을 제외한 데스크톱 운영체제일 경우 수행하는 것으로
  if (!kIsWeb && (Platform.isWindows || Platform.isLinux || Platform.isMacOS)) {
    /// Flutter는 데스크톱 앱을 빌드하기 위한 Flutter Desktop Embedding을 사용하는데,
    /// 아직 실험적인 단계이며, 안정성이 보장되지 않아 강제로 초기화를 시켜줌
    WidgetsFlutterBinding.ensureInitialized();

    setWindowTitle('Provider Demo');
    setWindowMinSize(ConstCfg.windowSize);
    setWindowMaxSize(ConstCfg.windowSize);
    getCurrentScreen().then((screen) {
      setWindowFrame(Rect.fromCenter(
        center: screen!.frame.center,
        width: ConstCfg.windowSize.width,
        height: ConstCfg.windowSize.height,
      ));
    });
  }
}