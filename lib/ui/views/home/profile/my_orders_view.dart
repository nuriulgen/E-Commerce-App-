import '../../../../core/constants/extension/color_extension.dart';
import '../../../../core/constants/extension/context_extension.dart';
import '../../../../core/constants/extension/string_extension.dart';
import '../../../../core/constants/image/image_constants.dart';
import '../../../../product/util/button/custom_elevated_button.dart';
import '../../../../product/util/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../../../../product/constants/bottom_navigation_bar.dart';

class MyOrdersView extends StatefulWidget {
  const MyOrdersView({Key? key}) : super(key: key);
  @override
  State<MyOrdersView> createState() => _MyOrdersViewState();
}

class _MyOrdersViewState extends State<MyOrdersView> {
  AppStringConstants? appStringConstants = AppStringConstants.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _pageTitle(),
      body: Padding(
        padding: context.padding2xHorizontal + context.padding2xVertical,
        child: Column(
          children: [
            Padding(
              padding: context.padding2xVertical + context.paddingXVertical,
              child: _image(),
            ),
            Padding(
                padding: context.paddingXVertical, child: _textTitle(context)),
            _textSubTitle(context),
            const Spacer(),
            Padding(
              padding: context.padding2xBottom,
              child: _shoppingButton(context),
            )
          ],
        ),
      ),
    );
  }

  CustomAppBar _pageTitle() =>
      CustomAppBar(title: appStringConstants!.myOrdersTitle);

  SizedBox _shoppingButton(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: CustomElevatedButton(
        title: appStringConstants!.myOrdersButtonTitle,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const CustomNavigationBar()));
        },
        color: context.chasm,
        textColor: context.white,
      ),
    );
  }

  Text _textSubTitle(BuildContext context) {
    return Text(
      appStringConstants!.myOrdersTextSubTitle,
      style: Theme.of(context)
          .textTheme
          .caption
          ?.copyWith(fontWeight: FontWeight.w400),
    );
  }

  Text _textTitle(BuildContext context) {
    return Text(
      appStringConstants!.myOrdersTextTitle,
      style: Theme.of(context)
          .textTheme
          .subtitle1
          ?.copyWith(fontWeight: FontWeight.w400),
    );
  }

  Center _image() {
    return Center(
      child: PngImage(imagePath: appStringConstants!.myOrdersImagePath),
    );
  }
}
