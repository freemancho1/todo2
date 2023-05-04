import 'package:flutter/material.dart';
import '../../sys/utils/datetime.dart';

class DateFormField extends StatefulWidget {
  final int valueKey;
  final IconData prefixIcon;
  final IconData suffixIcon;
  final String labelText;
  final void Function(DateTime?) changeAction;
  const DateFormField({
    super.key,
    required this.valueKey,
    required this.prefixIcon,
    required this.suffixIcon,
    required this.labelText,
    required this.changeAction,
  });

  @override
  State<DateFormField> createState() => _DateFormFieldState();
}

class _DateFormFieldState extends State<DateFormField> {
  final _textController = TextEditingController();

  bool get _isShowSuffixIcon => _textController.text.isNotEmpty;
  DateTime? _currentDate;

  void changeData(DateTime? value) {
    setState(() {
      _textController.text = dateToString(value);
      _currentDate = value;
    });
    widget.changeAction(value);
  }

  @override
  Widget build(BuildContext context) => TextFormField(
    key: ValueKey(widget.valueKey),
    controller: _textController,
    maxLines: 1,
    readOnly: true,
    decoration: InputDecoration(
      prefixIcon: Icon(widget.prefixIcon),
      labelText: widget.labelText,
      suffixIcon: (_isShowSuffixIcon)
        ? IconButton(
            onPressed: () {
              setState(() {
                _textController.text = '';
                _currentDate = DateTime.now();
              });
              widget.changeAction(null);
              /// 포커스를 일어야, 정상적으로 hint가 보임.
              FocusScope.of(context).unfocus();
            },
            icon: Icon(widget.suffixIcon),
          )
        : null,
    ),
    onTap: () => selectDateWidget(
      context: context,
      initialDate: _currentDate,
      changeAction: changeData,
    )
  );
}
