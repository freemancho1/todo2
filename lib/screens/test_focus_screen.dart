import 'dart:async';

import 'package:flutter/material.dart';
import '../../sys/config/logger.dart';

class TestFocusScreen extends StatefulWidget {
  const TestFocusScreen({Key? key}) : super(key: key);

  @override
  State<TestFocusScreen> createState() => _TestFocusScreenState();
}

class _TestFocusScreenState extends State<TestFocusScreen> {
  final StreamController<int> _activeIndex = StreamController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Test'),),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return MyListTile(title: 'Item $index');
        }
      )
    );
  }
}

class MyListTile extends StatefulWidget {
  final String title;
  const MyListTile({
    super.key,
    required this.title,
  });

  @override
  State<MyListTile> createState() => _MyListTileState();
}

class _MyListTileState extends State<MyListTile> {
  final _focusNode = FocusNode();
  bool isFocus = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('${widget.title} ${isFocus ? "get": "loss"} focus'),
      focusNode: _focusNode,
      onTap: () {
        _focusNode.requestFocus();
      },
      onFocusChange: (hasFocus) {
        if (hasFocus) {
          setState(() => isFocus = true);
          appLog.info('${widget.title} get focus');
        } else {
          setState(() => isFocus = false);
          appLog.info('${widget.title} loss focus');
        }
      },
    );
  }
}

