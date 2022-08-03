import 'package:flutter/material.dart';

import '../../../core/constants/extension/color_extension.dart';
import '../../../core/constants/extension/context_extension.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    required this.title,
    this.icon,
  }) : super(key: key);
  final String title;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(
          Icons.chevron_left_outlined,
          color: context.heatherGrey,
          size: context.hw30,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.headline6?.copyWith(
            fontWeight: FontWeight.w400, color: context.blackChesnut),
      ),
      centerTitle: true,
      actions: [
        IconButton(onPressed: () {}, icon: icon ?? const SizedBox.shrink())
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
