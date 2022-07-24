import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  // X: double = 10

  //PADDING
  EdgeInsets get paddingLowAll => const EdgeInsets.all(8);
  EdgeInsets get paddingMediumAll => const EdgeInsets.all(16);
  EdgeInsets get paddingHighAll => const EdgeInsets.all(24);

  EdgeInsets get paddingXVertical => const EdgeInsets.symmetric(vertical: 10);
  EdgeInsets get padding2xVertical => const EdgeInsets.symmetric(vertical: 20);

  EdgeInsets get paddingXHorizontal =>
      const EdgeInsets.symmetric(horizontal: 10);
  EdgeInsets get padding2xHorizontal =>
      const EdgeInsets.symmetric(horizontal: 20);

  EdgeInsets get paddingXTop => const EdgeInsets.only(top: 10);
  EdgeInsets get padding2xTop => const EdgeInsets.only(top: 20);

  EdgeInsets get paddingXBottom => const EdgeInsets.only(bottom: 10);
  EdgeInsets get padding2xBottom => const EdgeInsets.only(bottom: 20);

  //SIZE
  double get height => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;

  double get lowValue => height * 0.01;
  double get normalValue => height * 0.02;
  double get mediumValue => height * 0.04;
  double get highValue => height * 0.1;

  // HEIGHT- WIDTH
  double get hw5 => 5;
  double get hw10 => 10;
  double get hw20 => 20;
  double get hw25 => 25;
  double get hw30 => 30;
  double get hw45 => 45;
  double get hw50 => 50;
  double get hw100 => 100;
  double get hw330 => 330;

  int get onBoardPageCount => 3;
}
