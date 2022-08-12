import 'package:auto_route/auto_route.dart';
import '../../../../../product/navigation/app_router.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constants/extension/color_extension.dart';
import '../../../../../core/constants/extension/context_extension.dart';
import '../../../../../core/constants/extension/string_extension.dart';
import '../../../../../core/constants/image/image_constants.dart';
import '../../../../../product/util/button/custom_elevated_button.dart';
import '../../../../../product/util/widget/custom_app_bar.dart';

class GiftCardView extends StatefulWidget {
  const GiftCardView({Key? key}) : super(key: key);
  @override
  State<GiftCardView> createState() => _GiftCardViewState();
}

class _GiftCardViewState extends State<GiftCardView> {
  AppStringConstants? appStringConstants = AppStringConstants.instance;
  final List<String> _cardTitle = [
    'What is a Gift Card?',
    'What is a Gift Voucher?',
    'Gift card/ Voucher FAQs',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: context.padding2xHorizontal + context.padding2xVertical,
          child: Column(
            children: [
              Padding(padding: context.paddingXVertical, child: _image()),
              SizedBox(
                width: context.hw330,
                height: context.hw330,
                child: _centerCard(context),
              ),
              SizedBox(width: context.hw330, child: _cardTitleList())
            ],
          ),
        ),
      ),
    );
  }

  Card _cardTitleList() {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: _cardList(),
      ),
    );
  }

  Card _centerCard(BuildContext context) {
    return Card(
      child: Padding(
        padding: context.paddingXHorizontal,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(appStringConstants!.giftCardsTextTitle),
            Padding(
              padding: context.paddingXBottom,
              child: _richText(context),
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width,
                child: _addGiftButton(context)),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: _buyGiftButton(context),
            ),
          ],
        ),
      ),
    );
  }

  CustomElevatedButton _buyGiftButton(BuildContext context) {
    return CustomElevatedButton(
      title: appStringConstants!.giftCardsBuyGiftButton,
      onPressed: () {},
      color: context.white,
      textColor: context.chasm,
    );
  }

  CustomElevatedButton _addGiftButton(BuildContext context) {
    return CustomElevatedButton(
      title: appStringConstants!.giftCardsAddGiftButton,
      onPressed: () {
        context.router.push(const AddGiftCardsRoute());
      },
      color: context.chasm,
      textColor: context.white,
    );
  }

  RichText _richText(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(text: appStringConstants!.giftCardsTextSubTitle1),
          TextSpan(text: appStringConstants!.giftCardsTextSubTitle2),
          TextSpan(text: appStringConstants!.giftCardsTextSubTitle3),
        ],
        style: Theme.of(context).textTheme.caption,
      ),
    );
  }

  Center _image() {
    return Center(
      child: PngImage(imagePath: appStringConstants!.addPaymentImagePath),
    );
  }

  CustomAppBar _appBar() =>
      CustomAppBar(title: appStringConstants!.giftCardsTitle);

  List<Widget> _cardList() {
    return List<Widget>.generate(
      _cardTitle.length,
      (index) => Column(
        children: [
          ListTile(
            title: Text(_cardTitle[index]),
            trailing: const Icon(Icons.chevron_right_outlined),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
