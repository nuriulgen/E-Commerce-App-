import 'package:e_commerce_app/core/constants/extension/color_extension.dart';
import 'package:e_commerce_app/core/constants/extension/context_extension.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constants/extension/string_extension.dart';
import '../../../../../product/util/button/custom_text_button.dart';
import '../../../../../product/util/card/custom_big_card.dart';
import '../../../../../product/util/card/custom_list_tile_card.dart';
import '../../../../../product/util/card/custom_small_card.dart';
import '../viewmodel/home_viewmodel.dart';
import 'home_detail_view.dart';
import 'new_trend_view_detail.dart';

part 'home_view.g.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends HomeViewModel {
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
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeDetailView(jsondata: data),
                        ),
                      );
                    },
                    child:
                        SmallCardFirst(appStringConstants: appStringConstants)),
              ),
              Padding(
                padding: context.paddingXVertical,
                child: SmallCardSecond(appStringConstants: appStringConstants),
              ),
              BigCardSecond(appStringConstants: appStringConstants),
              Padding(
                padding: context.paddingXVertical,
                child: BigCardThird(appStringConstants: appStringConstants),
              ),
              SavedItemsTitle(appStringConstants: appStringConstants),
              SavedItemsListTile(appStringConstants: appStringConstants),
            ],
          ),
        ),
      ),
    );
  }
}
