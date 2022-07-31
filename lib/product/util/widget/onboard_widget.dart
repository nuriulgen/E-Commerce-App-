import '../../../core/constants/extension/color_extension.dart';
import '../../../core/constants/extension/context_extension.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/image/image_constants.dart';

class OnBoardWidget extends StatelessWidget {
  const OnBoardWidget({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.imagePath,
  }) : super(key: key);

  final String title;
  final String subTitle;
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: context.padding2xBottom,
          child: _placeImage,
        ),
        SizedBox(height: context.highValue),
        Padding(
          padding: context.paddingXVertical,
          child: _title(context),
        ),
        Padding(
          padding: context.paddingXVertical,
          child: _subTitle(context),
        ),

        // Expanded(child: _header),
      ],
    );
  }

  SizedBox _subTitle(BuildContext context) {
    return SizedBox(
      height: context.hw45,
      width: context.hw330,
      child: Text(
        subTitle,
        style: Theme.of(context)
            .textTheme
            .subtitle2
            ?.copyWith(color: context.heatherGrey, fontWeight: FontWeight.w400),
      ),
    );
  }

  Text _title(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context)
          .textTheme
          .headline6
          ?.copyWith(color: context.chasm, fontWeight: FontWeight.w400),
    );
  }

  Widget get _placeImage => PngImage(imagePath: imagePath);
}
