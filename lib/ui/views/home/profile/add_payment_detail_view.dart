import '../../../../core/constants/extension/color_extension.dart';
import '../../../../core/constants/extension/context_extension.dart';
import '../../../../core/constants/extension/string_extension.dart';
import '../../../../core/constants/image/image_constants.dart';
import '../../../../product/util/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';

class AddPatmentDetail extends StatefulWidget {
  const AddPatmentDetail({Key? key}) : super(key: key);

  @override
  State<AddPatmentDetail> createState() => _AddPatmentDetailState();
}

class _AddPatmentDetailState extends State<AddPatmentDetail> {
  AppStringConstants? appStringConstants = AppStringConstants.instance;

  final List<String> _imagePath = [
    'card_visa',
    'card_paypal',
    'card_mastercard'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Padding(
        padding: context.padding2xHorizontal,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: context.paddingXVertical + context.paddingXLeft,
              child: _textTitle(),
            ),
            Padding(
                padding: context.paddingXVertical, child: _customCard(context)),
            Padding(
              padding: context.paddingXVertical + context.paddingXLeft,
              child: _textSubTitle(),
            ),
            _customListTile(context),
          ],
        ),
      ),
    );
  }

  Card _customListTile(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(
          appStringConstants!.addPaymentDetailListTileTitle,
          style: Theme.of(context)
              .textTheme
              .bodySmall
              ?.copyWith(color: context.black),
        ),
        trailing: const Icon(Icons.chevron_right),
      ),
    );
  }

  Text _textSubTitle() =>
      Text(appStringConstants!.addPaymentDetailTextSubTitle);

  SizedBox _customCard(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: _cardList(),
        ),
      ),
    );
  }

  Text _textTitle() => Text(appStringConstants!.addPaymentDetailTextTitle);

  CustomAppBar _appBar() =>
      CustomAppBar(title: appStringConstants!.addPaymentDetailTitle);

  List<Widget> _cardList() {
    double size = 100;
    return List<Widget>.generate(
      _imagePath.length,
      (index) => SizedBox(
        width: size,
        height: size,
        child: Card(child: PngImage(imagePath: _imagePath[index])),
      ),
    );
  }
}
