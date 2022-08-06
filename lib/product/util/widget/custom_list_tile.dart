import 'package:flutter/material.dart';

import '../../../core/constants/extension/color_extension.dart';
import '../../../core/constants/extension/context_extension.dart';

class CustomListTile extends StatefulWidget {
  const CustomListTile({
    Key? key,
    this.icon,
    required this.title,
    this.onTap,
  }) : super(key: key);

  final String title;
  final IconData? icon;
  final void Function()? onTap;

  @override
  State<CustomListTile> createState() => _CustomListTileState();
}

class _CustomListTileState extends State<CustomListTile> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: ListTile(
        leading: Icon(widget.icon, color: context.chasm, size: context.hw30) ,
        title: Text(widget.title),
        trailing: Icon(Icons.chevron_right_outlined, size: context.hw30),
      ),
    );
  }
}
