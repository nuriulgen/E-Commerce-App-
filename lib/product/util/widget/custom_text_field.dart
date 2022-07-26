// ignore_for_file: must_be_immutable

import 'package:e_commerce_app/core/constants/extension/context_extension.dart';
import 'package:flutter/material.dart';

import '../../constants/exception/validate_exception.dart';

class CustomTextField extends StatefulWidget {
  CustomTextField(
      {Key? key,
      required this.labelText,
      this.textInputType,
      this.inputBorder,
      this.prefixIcon,
      this.suffix,
      required this.obscureText,
      this.controller})
      : super(key: key);
  final String labelText;
  final bool obscureText;
  final TextInputType? textInputType;
  final InputBorder? inputBorder;
  final Widget? prefixIcon;
  final Widget? suffix;
  TextEditingController? controller;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.paddingXVertical,
      child: TextFormField(
        keyboardType: widget.textInputType,
        textInputAction: TextInputAction.next,
        obscureText: widget.obscureText,
        decoration: decoration(context),
        validator: _validate,
      ),
    );
  }

  String? _validate(String? value) {
    return (value?.isNotEmpty ?? false)
        ? null
        : ValidateEmptyException().toString();
  }

  InputDecoration decoration(BuildContext context) {
    return InputDecoration(
      border: widget.inputBorder ??
          OutlineInputBorder(
            borderRadius: BorderRadius.circular(context.hw10),
          ),
      labelText: widget.labelText,
      prefixIcon: widget.prefixIcon,
      suffixIcon: widget.suffix,
    );
  }
}
