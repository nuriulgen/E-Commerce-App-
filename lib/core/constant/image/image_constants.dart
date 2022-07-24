import 'package:flutter/material.dart';

class PngImage extends StatelessWidget {
  const PngImage({Key? key, required this.imagePath}) : super(key: key);
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Image.asset(_nameWithPath, fit: BoxFit.fitHeight);
  }

  String get _nameWithPath => 'assets/images/$imagePath.png';
}
