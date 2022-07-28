import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton(
      {Key? key,
      required this.title,
      required this.onPressed,
      required this.textColor})
      : super(key: key);

  final String title;
  final Color textColor;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .subtitle2
            ?.copyWith(color: textColor, fontWeight: FontWeight.w600),
      ),
    );
  }
}
