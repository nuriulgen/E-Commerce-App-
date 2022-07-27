
import 'package:e_commerce_app/core/constants/extension/context_extension.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/extension/string_extension.dart';
import '../../../product/util/card/custom_big_card.dart';
import '../../../product/util/card/custom_small_card.dart';

part './home_view.g.dart';
class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  AppStringConstants? appStringConstants = AppStringConstants.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: context.padding2xHorizontal,
          child: Column(
            children: [
              BigCardFirst(appStringConstants: appStringConstants),
              Padding(
                padding: context.padding2xVertical,
                child: SmallCardFirst(appStringConstants: appStringConstants),
              ),
              Padding(
                padding: context.paddingXVertical,
                child: SmallCardSecond(appStringConstants: appStringConstants),
              ),
              BigCardSecond(appStringConstants: appStringConstants),
            ],
          ),
        ),
      ),
    );
  }
}

