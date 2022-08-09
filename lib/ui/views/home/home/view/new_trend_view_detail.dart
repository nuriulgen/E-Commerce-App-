import '../../../../../product/util/widget/custom_dialog.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constants/extension/color_extension.dart';
import '../../../../../core/constants/extension/context_extension.dart';
import '../../../../../core/constants/extension/string_extension.dart';
import '../../../../../product/util/button/custom_outlined_button.dart';
import '../../../../../product/util/button/custom_text_button.dart';
import '../../../../../product/util/card/custom_medium_card.dart';
import '../../../../../product/util/widget/custom_app_bar.dart';
import '../../../../../product/util/widget/custom_sheet.dart';

part 'new_trend_view_detail.g.dart';

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
                height: MediaQuery.of(context).size.height - context.hw10,
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
