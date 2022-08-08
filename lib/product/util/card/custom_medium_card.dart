import 'package:flutter/material.dart';

import '../../../core/constants/extension/color_extension.dart';
import '../../../core/constants/extension/context_extension.dart';
import '../../../core/constants/image/image_constants.dart';

class CustomMediumCard extends StatefulWidget {
  const CustomMediumCard({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  final String imagePath;
  final String title;
  final String subTitle;

  @override
  State<CustomMediumCard> createState() => _CustomMediumCardState();
}

class _CustomMediumCardState extends State<CustomMediumCard> {
  bool _isLiked = false;
  final int _flex = 2;

  void _isChangedColor() {
    setState(() {
      _isLiked = !_isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        width: context.hw160,
        height: context.hw170,
        child: Padding(
          padding: context.paddingX2Left,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: _flex,
                child: _cardImage(),
              ),
              Padding(
                padding: context.paddingX2Top,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _cardTitle(context),
                    _cardSubTitle(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row _cardSubTitle(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '\$${widget.subTitle}',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        likeButton(),
      ],
    );
  }

  Text _cardTitle(BuildContext context) {
    return Text(widget.title,
        style: Theme.of(context)
            .textTheme
            .subtitle1
            ?.copyWith(color: context.heatherGrey));
  }

  Center _cardImage() => Center(child: PngImage(imagePath: widget.imagePath));

  IconButton likeButton() {
    return IconButton(
      onPressed: _isChangedColor,
      icon: Icon(
        Icons.favorite,
        color: _isLiked ? context.red : context.heatherGrey,
      ),
    );
  }
}
