import '../../../core/constants/extension/color_extension.dart';
import '../../../core/constants/extension/context_extension.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/image/image_constants.dart';

class CustomListTileCard extends StatelessWidget {
  const CustomListTileCard(
      {Key? key,
      required this.title,
      required this.subTitle,
      required this.imagePath,
      this.onPressed})
      : super(key: key);

  final String title;
  final String subTitle;
  final String imagePath;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: _image(context),
        title: Padding(
          padding: context.paddingX2Vertical,
          child: _title(context),
        ),
        subtitle: _subTitle(context),
        trailing: _NextPageButton(onPressed: onPressed),
      ),
    );
  }

  SizedBox _image(BuildContext context) {
    return SizedBox(width: context.hw50, child: PngImage(imagePath: imagePath));
  }

  Text _subTitle(BuildContext context) {
    return Text(
      '\$$subTitle',
      style: Theme.of(context).textTheme.headline6,
    );
  }

  Text _title(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context)
          .textTheme
          .subtitle1
          ?.copyWith(color: context.heatherGrey),
    );
  }
}

class _NextPageButton extends StatelessWidget {
  const _NextPageButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        Icons.chevron_right_outlined,
        size: context.hw30,
      ),
    );
  }
}
