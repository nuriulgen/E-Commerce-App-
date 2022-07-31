import '../../../../core/constants/extension/color_extension.dart';
import '../../../../core/constants/extension/context_extension.dart';
import '../../../../core/constants/extension/string_extension.dart';
import '../../../../product/util/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../../../../product/util/button/custom_outlined_button.dart';
import '../../../../product/util/card/custom_medium_card.dart';

class NewTrendViewDetail extends StatefulWidget {
  const NewTrendViewDetail({Key? key}) : super(key: key);
  @override
  State<NewTrendViewDetail> createState() => _NewTrendViewDetailState();
}

class _NewTrendViewDetailState extends State<NewTrendViewDetail> {
  AppStringConstants? appStringConstants = AppStringConstants.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: appStringConstants!.newTrendTitle,
        icon: Icon(Icons.shopping_cart_outlined, color: context.black),
      ),
      body: Padding(
        padding: context.padding2xHorizontal,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: context.paddingXVertical,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SortButton(appStringConstants: appStringConstants),
                    FilterButton(appStringConstants: appStringConstants),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height - 10,
                width: MediaQuery.of(context).size.width,
                child: ProductList(appStringConstants: appStringConstants),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FilterButton extends StatelessWidget {
  const FilterButton({
    Key? key,
    required this.appStringConstants,
  }) : super(key: key);

  final AppStringConstants? appStringConstants;

  @override
  Widget build(BuildContext context) {
    return CustomOutlinedButton(
      onPressed: () {},
      child: SizedBox(
        width: context.hw150,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.tune_outlined,
                size: context.hw30, color: context.chasm),
            Text(
              appStringConstants!.newTrendTabTitle2,
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  ?.copyWith(color: context.chasm),
            ),
          ],
        ),
      ),
    );
  }
}

class SortButton extends StatelessWidget {
  const SortButton({
    Key? key,
    required this.appStringConstants,
  }) : super(key: key);

  final AppStringConstants? appStringConstants;

  @override
  Widget build(BuildContext context) {
    return CustomOutlinedButton(
      onPressed: () {},
      child: SizedBox(
        width: context.hw150,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.filter_list_outlined,
                size: context.hw30, color: context.chasm),
            Text(
              appStringConstants!.newTrendTabTitle1,
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  ?.copyWith(color: context.chasm),
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
    return GridView.count(
      shrinkWrap: true,
      primary: false,
      crossAxisCount: context.gridViewCrossAxisCount,
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
