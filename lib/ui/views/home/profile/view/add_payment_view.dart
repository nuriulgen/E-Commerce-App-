import '../../../../../core/constants/extension/color_extension.dart';
import '../../../../../core/constants/extension/context_extension.dart';
import '../../../../../core/constants/extension/string_extension.dart';
import '../../../../../core/constants/image/image_constants.dart';
import '../../../../../product/util/button/custom_elevated_button.dart';
import '../../../../../product/util/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../../../../../product/constants/bottom_navigation_bar.dart';

class AdressBookView extends StatefulWidget {
  const AdressBookView({Key? key}) : super(key: key);
  @override
  State<AdressBookView> createState() => _AdressBookViewState();
}

class _AdressBookViewState extends State<AdressBookView> {
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
              child: _addNewAdressButton(context),
            )
          ],
        ),
      ),
    );
  }

  CustomAppBar _pageTitle() =>
      CustomAppBar(title: appStringConstants!.addPaymentTitle);

  SizedBox _addNewAdressButton(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: CustomElevatedButton(
        title: appStringConstants!.addPaymentButtonTitle,
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

  SizedBox _textSubTitle(BuildContext context) {
    return SizedBox(
      width: context.hw330,
      child: Text(
        appStringConstants!.addPaymentTextSubTitle,
        style: Theme.of(context)
            .textTheme
            .caption
            ?.copyWith(fontWeight: FontWeight.w400),
      ),
    );
  }

  Text _textTitle(BuildContext context) {
    return Text(
      appStringConstants!.addPaymentTextTitle,
      style: Theme.of(context)
          .textTheme
          .subtitle1
          ?.copyWith(fontWeight: FontWeight.w400),
    );
  }

  Center _image() {
    return Center(
      child: PngImage(imagePath: appStringConstants!.addPaymentImagePath),
    );
  }
}
