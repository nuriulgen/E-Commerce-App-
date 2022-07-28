import 'package:e_commerce_app/core/constants/extension/color_extension.dart';
import 'package:e_commerce_app/core/constants/extension/context_extension.dart';
import 'package:e_commerce_app/core/constants/extension/string_extension.dart';
import 'package:e_commerce_app/product/util/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../../../../product/util/card/custom_medium_card.dart';
import '../../../../product/util/widget/custom_rectangle_tabbar.dart';

class NewTrendViewDetail extends StatefulWidget {
  const NewTrendViewDetail({Key? key}) : super(key: key);
  @override
  State<NewTrendViewDetail> createState() => _NewTrendViewDetailState();
}

class _NewTrendViewDetailState extends State<NewTrendViewDetail>
    with TickerProviderStateMixin {
  AppStringConstants? appStringConstants = AppStringConstants.instance;
  late final TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: appStringConstants!.newTrendTitle,
        icon: Icon(Icons.shopping_cart_outlined, color: context.black),
      ),
      body: Padding(
        padding: context.padding2xHorizontal,
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height - 100,
              width: MediaQuery.of(context).size.width,
              child: CustomRectangleTabBar(
                titleFirst: appStringConstants!.newTrendTabTitle1,
                titleSecond: appStringConstants!.newTrendTabTitle2,
                iconFirst: Icons.filter_list_outlined,
                iconSecond: Icons.tune_outlined,
                widgetFirst:
                    ProductList(appStringConstants: appStringConstants),
                widgetSecond: const Center(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductList extends StatelessWidget {
  const ProductList({
    Key? key,
    required this.appStringConstants,
  }) : super(key: key);

  final AppStringConstants? appStringConstants;

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: context.gridViewCrossAxisCount,
      ),
      children: [
        CustomMediumCard(
          imagePath: appStringConstants!.newTrendProductImagePath1,
          title: appStringConstants!.newTrendProductTitle1,
          subTitle: appStringConstants!.newTrendProductSubTitle1,
        ),
        CustomMediumCard(
          imagePath: appStringConstants!.newTrendProductImagePath2,
          title: appStringConstants!.newTrendProductTitle2,
          subTitle: appStringConstants!.newTrendProductSubTitle2,
        ),
        CustomMediumCard(
          imagePath: appStringConstants!.newTrendProductImagePath3,
          title: appStringConstants!.newTrendProductTitle3,
          subTitle: appStringConstants!.newTrendProductSubTitle3,
        ),
        CustomMediumCard(
          imagePath: appStringConstants!.newTrendProductImagePath4,
          title: appStringConstants!.newTrendProductTitle4,
          subTitle: appStringConstants!.newTrendProductSubTitle4,
        ),
        CustomMediumCard(
          imagePath: appStringConstants!.newTrendProductImagePath5,
          title: appStringConstants!.newTrendProductTitle5,
          subTitle: appStringConstants!.newTrendProductSubTitle5,
        ),
        CustomMediumCard(
          imagePath: appStringConstants!.newTrendProductImagePath6,
          title: appStringConstants!.newTrendProductTitle6,
          subTitle: appStringConstants!.newTrendProductSubTitle6,
        ),
        CustomMediumCard(
          imagePath: appStringConstants!.newTrendProductImagePath1,
          title: appStringConstants!.newTrendProductTitle1,
          subTitle: appStringConstants!.newTrendProductSubTitle1,
        ),
        CustomMediumCard(
          imagePath: appStringConstants!.newTrendProductImagePath2,
          title: appStringConstants!.newTrendProductTitle2,
          subTitle: appStringConstants!.newTrendProductSubTitle2,
        ),
      ],
    );
  }
}
