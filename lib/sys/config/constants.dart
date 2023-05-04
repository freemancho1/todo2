import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

class ConstCfg {
  /// 앱명
  static const String appName = 'Todo1';

  /// 윈도우 크기 설정(일반 OS 응용프로그램으로 실행될 때 적용됨)
  static const double _windowWidth = 400;
  static const double _windowHeight = 800;
  static const Size windowSize = Size(_windowWidth, _windowHeight);

  /// 로그 설정
  static const String loggerName = 'com.freeman.app';
  static const debugLogLevel = Level.ALL;
  static const releaseLogLevel = Level.WARNING;

  /// Material Design 설정
  static const MaterialColor appColorScheme = Colors.teal;
  static const bool appUseMaterial3 = false;

  /// 시스템에서 사용하는 일반적인 단어
  static const String textSave = '저장';
  static const String textCancel = '취소';
  static const String textClose = '닫기';
  static const String textExit = '종료';
  static const String textOpen = '열기';
  static const String textRemove = '제거';

  /// 시스템에서 사용하는 일반적인 아이콘
  static const IconData iconAdd = Icons.add;
  static const IconData iconDelete = Icons.delete;

  /// 여백 등 공간관련
  static const double basePaddingSize = 8.0;
  static const Widget gapHightSmall = SizedBox(height: basePaddingSize,);
  static const Widget gapHightMedium = SizedBox(height: basePaddingSize * 2);
  static const Widget gapWidthSmall = SizedBox(width: basePaddingSize,);
  static const double listTileIconSize = 24;

  /// 할일 등록화면 관련
  static const String textNewTodoAppbarTitle = '새 할일';
  static const String textNewTodoTitleHint = '할일';
  static const String textNewTodoSubTitleHint = '세부 내용';
  static const String textNewTodoDeadlineHint = '기한';

  /// 할일 목록화면 관련
  static const String textTodoListAppbarTitle = '할일 목록';
  static const String textTodoListNothingTodo = '할일이 없습니다.';
  static const double heightActionIconContainer = 40;
  static const double radiusActionIconContainer = 25;
  static const double sizeActionIcons = 16;
  static const Color colorActionIcons = Colors.white;

}