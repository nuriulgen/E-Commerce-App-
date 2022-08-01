import 'package:e_commerce_app/core/constants/extension/color_extension.dart';
import 'package:e_commerce_app/core/constants/extension/context_extension.dart';
import 'package:e_commerce_app/product/util/button/custom_elevated_button.dart';
import 'package:flutter/material.dart';

mixin ProjectDialogMixin {
  Future<T?> showCustomDialog<T>(
    BuildContext context,
    Widget child,
    List<Widget>? actionsWidget,
  ) async {
    return showDialog<T>(
        context: context,
        builder: (context) {
          return CustomMainDialog(
            context: context,
            actionsWidget: actionsWidget,
            child: child,
          );
        });
  }
}

class CustomMainDialog extends AlertDialog {
  final Widget child;
  final List<Widget>? actionsWidget;
  CustomMainDialog({
    Key? key,
    required BuildContext context,
    required this.child,
     this.actionsWidget,
  }) : super(
          key: key,
          content: child,
          actions: actionsWidget ??
              [
                SizedBox(
                  height: context.hw45,
                  child: CustomElevatedButton(
                    title: _AlertButton.cancel.name,
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    color: context.white,
                    textColor: context.chasm,
                  ),
                ),
                SizedBox(
                  height: context.hw45,
                  child: CustomElevatedButton(
                    title: _AlertButton.done.name,
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    color: context.chasm,
                    textColor: context.white,
                  ),
                ),
              ],
        );
}

enum _AlertButton { cancel, done }
