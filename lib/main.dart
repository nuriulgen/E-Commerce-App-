import 'core/constants/app/app_constants.dart';
import 'ui/views/home/home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'ui/views/home/home/new_trend_view_detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ApplicationConstants.PROJECT_NAME,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
        scaffoldBackgroundColor: const Color(0xFFFFFFFF),
      ),
      home: const NewTrendViewDetail(),
    );
  }
}
