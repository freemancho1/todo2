import 'package:flutter/material.dart';

class CenterTextWidget extends StatelessWidget {
  final String message;
  final TextStyle? style;
  const CenterTextWidget({
    super.key,
    required this.message,
    this.style
  });

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(message, style: style,),);
  }
}
