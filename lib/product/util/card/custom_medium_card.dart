import 'package:e_commerce_app/core/constants/extension/color_extension.dart';
import 'package:e_commerce_app/core/constants/extension/context_extension.dart';
import 'package:flutter/material.dart';

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
  bool isLiked = false;

  void isChangedColor() {
    setState(() {
      isLiked = !isLiked;
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
                flex: 2,
                child: cardImage(),
              ),
              Padding(
                padding: context.paddingX2Top,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    cardTitle(context),
                    cardSubTitle(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row cardSubTitle(BuildContext context) {
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

  Text cardTitle(BuildContext context) {
    return Text(widget.title,
        style: Theme.of(context)
            .textTheme
            .subtitle1
            ?.copyWith(color: context.heatherGrey));
  }

  Center cardImage() => Center(child: PngImage(imagePath: widget.imagePath));

  IconButton likeButton() {
    return IconButton(
      onPressed: isChangedColor,
      icon: Icon(
        Icons.favorite,
        color: isLiked ? context.red : context.heatherGrey,
      ),
    );
  }
}
