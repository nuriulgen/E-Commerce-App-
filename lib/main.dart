import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'core/constants/app/app_constants.dart';
import 'core/init/theme/theme_notifier.dart';
import 'product/init/product_init.dart';
import 'product/navigation/app_router.dart';

void main() {
  final productInit = ProductInit();
  runApp(
    MultiProvider(
      providers: productInit.providers,
      builder: (context, child) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      debugShowCheckedModeBanner: false,
      title: ApplicationConstants.PROJECT_NAME,
      theme: context.watch<ThemeNotifier>().currentTheme,
    );
  }
}
