import 'package:e_commerce_app/core/constants/extension/color_extension.dart';
import 'package:e_commerce_app/core/constants/extension/context_extension.dart';
import 'package:e_commerce_app/core/constants/image/image_constants.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/extension/string_extension.dart';

class SearchView extends StatefulWidget {
  const SearchView({Key? key}) : super(key: key);
  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  AppStringConstants? appStringConstants = AppStringConstants.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: context.padding2xHorizontal + context.padding2xVertical,
        child: Column(
          children: [
            Padding(
              padding: context.padding2xVertical,
              child: _searchField(context),
            ),
            SizedBox(height: context.hw200),
            Padding(padding: context.paddingXVertical, child: _image()),
            _imageAlertText(),
          ],
        ),
      ),
    );
  }

  TextFormField _searchField(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search_outlined, color: context.chasm),
        hintText: appStringConstants!.searchHintTitle,
        suffixIcon: Icon(Icons.camera_alt_outlined, color: context.heatherGrey),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(context.hw10)),
      ),
    );
  }

  Text _imageAlertText() => Text(appStringConstants!.searchAlertText);

  PngImage _image() => PngImage(imagePath: appStringConstants!.searchImagePath);
}
