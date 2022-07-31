import '../../../core/constants/extension/color_extension.dart';
import '../../../core/constants/extension/context_extension.dart';
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
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.hw50,
      width: context.hw170,
      child: ListTile(
        title: _title(context),
        leading: radioButton(context),
      ),
    );
  }

  Radio<String> radioButton(BuildContext context) {
    return Radio(
        activeColor: context.chasm,
        value: value,
        groupValue: groupValue,
        onChanged: onChanged,
      );
  }

  Text _title(BuildContext context) {
    return Text(
        title,
        style: Theme.of(context).textTheme.subtitle1,
      );
  }
}
