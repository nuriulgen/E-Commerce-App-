import 'package:e_commerce_app/core/constant/extension/context_extension.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField(
      {Key? key,
      required this.labelText,
      this.textInputType,
      this.inputBorder,
      this.prefixIcon,
      this.suffix,
      required this.obscureText})
      : super(key: key);
  final String labelText;
  final bool obscureText;
  final TextInputType? textInputType;
  final InputBorder? inputBorder;
  final Widget? prefixIcon;
  final Widget? suffix;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.paddingXVertical,
      child: TextField(
        keyboardType: widget.textInputType,
        textInputAction: TextInputAction.next,
        obscureText: widget.obscureText,
        decoration: InputDecoration(
          border: widget.inputBorder ??
              OutlineInputBorder(
                  borderRadius: BorderRadius.circular(context.hw10)),
          labelText: widget.labelText,
          prefixIcon: widget.prefixIcon,
          suffixIcon: widget.suffix,
        ),
      ),
    );
  }
}
