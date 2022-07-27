
import 'package:e_commerce_app/core/constants/extension/context_extension.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton(
      {Key? key,
      required this.title,
      required this.onPressed,
      required this.color,
      required this.textColor})
      : super(key: key);

  final String title;
  final Color color;
  final Color textColor;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: color,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(context.hw10))),
      onPressed: onPressed,
      child: Padding(
        padding: context.paddingMediumAll,
        child: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .subtitle2
              ?.copyWith(color: textColor, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
