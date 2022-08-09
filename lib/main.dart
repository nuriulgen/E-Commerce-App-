import 'product/init/product_init.dart';
import 'ui/views/authetication/onboarding/view/onboarding_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'core/constants/app/app_constants.dart';
import 'core/init/theme/theme_notifier.dart';

void main() {
  final productInit = ProductInit();
  runApp(
    MultiProvider(
      providers: productInit.providers,
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
      home: const OnBoardingView(),
    );
  }
}
