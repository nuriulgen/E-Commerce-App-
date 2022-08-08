// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

import '../../core/constants/extension/color_extension.dart';
import '../../ui/views/home/home/home_view.dart';
import '../../ui/views/home/home/new_trend_view_detail.dart';
import '../../ui/views/home/profile/view/profile_view.dart';
import '../../ui/views/home/search_view.dart';

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
    const ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
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
          items: _barItems(),
        ),
      ),
    );
  }

  List<BottomNavigationBarItem> _barItems() {
    return [
      BottomNavigationBarItem(
        icon: const Icon(Icons.home),
        label: BottomNavItem.Home.name,
      ),
      BottomNavigationBarItem(
        icon: const Icon(Icons.search),
        label: BottomNavItem.Search.name,
      ),
      BottomNavigationBarItem(
        icon: const Icon(Icons.shopping_cart_outlined),
        label: BottomNavItem.Cart.name,
      ),
      BottomNavigationBarItem(
        icon: const Icon(Icons.person_outline_outlined),
        label: BottomNavItem.Profile.name,
      ),
    ];
  }
}

enum BottomNavItem { Home, Search, Cart, Profile }
