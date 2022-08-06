import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTheme {
  CustomTheme._();
  static final instance = CustomTheme._();

  final lightTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle.dark,
    ),
    scaffoldBackgroundColor: const Color(0xFFFFFFFF),
  );

  final darkTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.red,
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle.light,
    ),
  );
}
