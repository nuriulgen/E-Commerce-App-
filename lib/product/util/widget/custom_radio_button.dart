import 'package:flutter/material.dart';

class CustomRadioButton extends StatelessWidget {
  const CustomRadioButton({
    Key? key,
    required this.groupValue,
    required this.onChanged,
    required this.value,
    required this.title,
  }) : super(key: key);
  final String value;
  final String? groupValue;
  final void Function(String?)? onChanged;
  final Widget title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: title,
      leading: Radio(
        value: value,
        groupValue: groupValue,
        onChanged: onChanged,
      ),
    );
  }
}
