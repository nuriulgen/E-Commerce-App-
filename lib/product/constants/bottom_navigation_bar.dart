import 'package:e_commerce_app/core/constants/extension/color_extension.dart';
import 'package:e_commerce_app/core/constants/extension/string_extension.dart';
import 'package:e_commerce_app/ui/views/home/home/home_view.dart';
import 'package:e_commerce_app/ui/views/home/home/new_trend_view_detail.dart';
import 'package:e_commerce_app/ui/views/home/home/search_view.dart';
import 'package:flutter/material.dart';

import '../../ui/views/home/profile/profile_view.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({Key? key}) : super(key: key);
  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int _currentIndex = 0;

  void onTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final _pages = [
    const HomeView(),
    const SearchView(),
    const NewTrendViewDetail(),
    const NewTrendViewDetail(),
  ];

  @override
  Widget build(BuildContext context) {
    AppStringConstants? appStringConstants = AppStringConstants.instance;
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: Card(
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          selectedItemColor: context.chasm,
          unselectedItemColor: context.heatherGrey,
          showUnselectedLabels: true,
          onTap: onTapped,
          items: _barItems(appStringConstants),
        ),
      ),
    );
  }

  List<BottomNavigationBarItem> _barItems(
      AppStringConstants? appStringConstants) {
    return [
      BottomNavigationBarItem(
        icon: const Icon(Icons.home),
        label: appStringConstants!.navigationBarTitle1,
      ),
      BottomNavigationBarItem(
        icon: const Icon(Icons.search),
        label: appStringConstants.navigationBarTitle2,
      ),
      BottomNavigationBarItem(
        icon: const Icon(Icons.shopping_cart_outlined),
        label: appStringConstants.navigationBarTitle3,
      ),
      BottomNavigationBarItem(
        icon: const Icon(Icons.person_outline_outlined),
        label: appStringConstants.navigationBarTitle4,
      ),
    ];
  }
}
