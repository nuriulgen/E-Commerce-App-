import 'package:e_commerce_app/core/constants/extension/context_extension.dart';
import 'package:flutter/material.dart';

mixin ProjectSheetMixin {
  Future<T?> showCustomSheet<T>(
      BuildContext context, Widget child, String? title, bool isScroll) async {
    return showModalBottomSheet<T>(
        isScrollControlled: isScroll,
        context: context,
        builder: (context) {
          return CustomMainSheet(title: title, child: child);
        });
  }
}

class CustomMainSheet extends StatelessWidget {
  const CustomMainSheet({
    Key? key,
    required this.child,
    this.title,
  }) : super(key: key);

  final Widget child;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height - 15,
      child: Padding(
        padding: context.padding2xHorizontal + context.padding2xVertical,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Padding(
                    padding: EdgeInsets.zero,
                    child: Icon(Icons.close),
                  ),
                ),
                SizedBox(width: context.hw150),
                Text(title ?? ''),
              ],
            ),
            Expanded(child: child),
          ],
        ),
      ),
    );
  }
}
