import 'package:e_commerce_app/core/constants/extension/color_extension.dart';
import 'package:e_commerce_app/core/constants/extension/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class CustomIndicatorTabBar extends StatefulWidget {
  const CustomIndicatorTabBar({
    Key? key,
    required this.titleFirst,
    required this.titleSecond,
    required this.widgetFirst,
    required this.widgetSecond,
    required this.iconFirst,
    required this.iconSecond,
  }) : super(key: key);

  final String titleFirst;
  final String titleSecond;
  final Widget widgetFirst;
  final Widget widgetSecond;
  final IconData iconFirst;
  final IconData iconSecond;

  @override
  State<CustomIndicatorTabBar> createState() => _CustomIndicatorTabBarState();
}

class _CustomIndicatorTabBarState extends State<CustomIndicatorTabBar>
    with TickerProviderStateMixin {
  late final TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: context.tabBarCount, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: tabController,
          indicatorColor: context.chasm,
          tabs: [
            tabsTitleFirst(context),
            tabsTitleSecond(context),
          ],
          labelColor: context.chasm,
          indicator: tabsStyle(context),
        ),
        Expanded(
          child: DefaultTabController(
            length: context.tabBarCount,
            initialIndex: context.initialIndex,
            child: TabBarView(
               physics: const NeverScrollableScrollPhysics(),
              controller: tabController,
              children: [
                Expanded(child: widget.widgetFirst),
                Expanded(child: widget.widgetSecond),
              ],
            ),
          ),
        ),
      ],
    );
  }

  MaterialIndicator tabsStyle(BuildContext context) {
    return MaterialIndicator(
      height: context.hw5,
      topLeftRadius:context.hw10,
      topRightRadius:context.hw10,
      horizontalPadding: context.hw50,
      tabPosition: TabPosition.bottom,
    );
  }

  Row tabsTitleSecond(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(widget.iconSecond, size: context.hw30, color: context.chasm),
        Padding(
          padding: context.paddingLowAll,
          child: Text(
            widget.titleFirst,
            style: Theme.of(context)
                .textTheme
                .subtitle1
                ?.copyWith(color: context.chasm),
          ),
        ),
      ],
    );
  }

  Row tabsTitleFirst(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(widget.iconFirst, size: context.hw30, color: context.chasm),
        Padding(
          padding: context.paddingLowAll,
          child: Text(
            widget.titleFirst,
            style: Theme.of(context)
                .textTheme
                .subtitle1
                ?.copyWith(color: context.chasm),
          ),
        ),
      ],
    );
  }
}

