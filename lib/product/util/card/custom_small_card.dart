import 'package:e_commerce_app/core/constants/extension/color_extension.dart';
import 'package:e_commerce_app/core/constants/extension/context_extension.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/image/image_constants.dart';

class CustomSmallCard extends StatefulWidget {
  const CustomSmallCard({
    Key? key,
    required this.imagePath,
    required this.title,
    this.subTitle,
  }) : super(key: key);

  final String imagePath;
  final String title;
  final String? subTitle;

  @override
  State<CustomSmallCard> createState() => _CustomSmallCardState();
}

class _CustomSmallCardState extends State<CustomSmallCard> {
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
        height: context.hw160,
        child: Padding(
          padding: context.paddingX2Left,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: _flex,
                child: _imageLikeButton(),
              ),
              _cardTitle(context),
              _cardSubTitle(context),
            ],
          ),
        ),
      ),
    );
  }

  Row _imageLikeButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [cardImage(), likeButton()],
    );
  }

  Text _cardSubTitle(BuildContext context) {
    return Text(
      widget.subTitle ?? '',
      style: Theme.of(context).textTheme.bodyText2,
    );
  }

  Text _cardTitle(BuildContext context) {
    return Text(
      widget.title,
      style: Theme.of(context).textTheme.bodyText1,
    );
  }

  PngImage cardImage() => PngImage(imagePath: widget.imagePath);

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
