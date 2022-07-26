import 'package:e_commerce_app/core/constant/extension/context_extension.dart';
import 'package:e_commerce_app/core/constant/image/image_constants.dart';
import 'package:flutter/material.dart';

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
              child: Text(title, style: Theme.of(context).textTheme.headline5),
            ),
            Padding(
              padding: context.paddingXRight,
              child: SizedBox(
                height: 200,
                child: PngImage(imagePath: imagePath),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
