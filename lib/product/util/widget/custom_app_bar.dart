import 'package:e_commerce_app/core/constant/extension/color_extension.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.chevron_left_outlined, color: context.heatherGrey),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.headline6?.copyWith(
            fontWeight: FontWeight.w700, color: context.blackChesnut),
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
