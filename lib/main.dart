import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'core/constants/app/app_constants.dart';
import 'core/init/theme/theme_notifier.dart';
import 'ui/views/home/home/view/home_view.dart';


void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<ThemeNotifier>(
            create: (context) => ThemeNotifier()),
      ],
      builder: (context, child) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ApplicationConstants.PROJECT_NAME,
      theme: context.watch<ThemeNotifier>().currentTheme,
      home: const HomeView(),
    );
  }
}
