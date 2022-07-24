import 'package:flutter/material.dart';

import '../../../../../core/constant/extension/string_extension.dart';
import '../view/onboarding_view.dart';

abstract class OnBoardingViewModel extends State<OnBoardingView> {
  final AppStringConstants? appStringConstants = AppStringConstants.instance;
  late PageController pageController;
  int activePage = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 0);
  }

  void onPageChanged(int index) {
    setState(() {
      activePage = index;
    });
  }
}
