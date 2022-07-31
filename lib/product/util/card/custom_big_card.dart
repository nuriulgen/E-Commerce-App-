import '../../../core/constants/extension/context_extension.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/image/image_constants.dart';

class CustomBigCard extends StatelessWidget {
  const CustomBigCard({
    Key? key,
    required this.imagePath,
    required this.title,
  }) : super(key: key);
  final String imagePath;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: context.hw150,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: context.padding2xLeft,
              child: _cardTitle(context),
            ),
            Padding(
              padding: context.paddingXRight,
              child: _cardImage(context),
            ),
          ],
        ),
      ),
    );
  }

  SizedBox _cardImage(BuildContext context) {
    return SizedBox(
      height: context.hw200,
      child: PngImage(imagePath: imagePath),
    );
  }

  Text _cardTitle(BuildContext context) =>
      Text(title, style: Theme.of(context).textTheme.headline5);
}
