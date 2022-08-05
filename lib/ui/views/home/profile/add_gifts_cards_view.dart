import 'package:e_commerce_app/core/constants/extension/context_extension.dart';
import 'package:e_commerce_app/core/constants/extension/string_extension.dart';
import 'package:e_commerce_app/core/constants/image/image_constants.dart';
import 'package:e_commerce_app/product/util/widget/custom_app_bar.dart';
import 'package:e_commerce_app/product/util/widget/custom_text_field.dart';
import 'package:flutter/material.dart';

class AddGiftCardsView extends StatefulWidget {
  const AddGiftCardsView({Key? key}) : super(key: key);
  @override
  State<AddGiftCardsView> createState() => _AddGiftCardsViewState();
}

class _AddGiftCardsViewState extends State<AddGiftCardsView> {
  AppStringConstants? appStringConstants = AppStringConstants.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: context.padding2xHorizontal,
          child: Column(
            children: [
              Padding(padding: context.paddingXTop, child: _textTitle()),
              Padding(
                  padding: context.padding2xVertical, child: _card(context)),
              Padding(
                  padding: context.paddingXVertical,
                  child: _inputTextField(context)),
            ],
          ),
        ),
      ),
    );
  }

  Column _inputTextField(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(appStringConstants!.addGiftTextFieldTitle1),
        Padding(
          padding: context.paddingXBottom + context.paddingX2Top,
          child: CustomTextField(
            labelText: appStringConstants!.addGiftLabelText1,
            obscureText: false,
          ),
        ),
        Text(appStringConstants!.addGiftTextFieldTitle2),
        CustomTextField(
          labelText: appStringConstants!.addGiftLabelText2,
          obscureText: false,
        ),
      ],
    );
  }

  SizedBox _card(BuildContext context) {
    return SizedBox(
      width: context.hw330,
      height: context.hw150,
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(appStringConstants!.addGiftCardTitle1),
            Text(appStringConstants!.addGiftCardTitle2),
            PngImage(imagePath: appStringConstants!.addGiftCardImagePath),
          ],
        ),
      ),
    );
  }

  Text _textTitle() => Text(appStringConstants!.addGiftTextTitle);

  CustomAppBar _appBar() =>
      CustomAppBar(title: appStringConstants!.addGiftTitle);
}
