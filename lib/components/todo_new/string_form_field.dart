import 'package:flutter/material.dart';

class StringFormField extends StatefulWidget {
  final int valueKey;
  final IconData prefixIcon;
  final String labelText;
  final void Function(String) changeAction;
  const StringFormField({
    super.key,
    required this.valueKey,
    required this.prefixIcon,
    required this.labelText,
    required this.changeAction,
  });

  @override
  State<StringFormField> createState() => _StringFormFieldState();
}

class _StringFormFieldState extends State<StringFormField> {
  @override
  Widget build(BuildContext context) => TextFormField(
    key: ValueKey(widget.valueKey),
    maxLines: null,
    onSaved: (value) => widget.changeAction(value!),
    onChanged: widget.changeAction,
    decoration: InputDecoration(
      prefixIcon: Icon(widget.prefixIcon),
      labelText: widget.labelText,
    ),
  );
}
