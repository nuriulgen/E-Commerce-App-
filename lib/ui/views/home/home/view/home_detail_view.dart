import 'package:flutter/material.dart';

class HomeDetailView extends StatefulWidget {
  final List? jsonData;
  const HomeDetailView({
    Key? key,
    this.jsonData,
  }) : super(key: key);
  @override
  State<HomeDetailView> createState() => _HomeDetailViewState();
}

class _HomeDetailViewState extends State<HomeDetailView> {
  @override
  Widget build(BuildContext context) {
    String text = 'Home View Detail';
    return Scaffold(
      body: Center(
        child: Text(text),
      ),
    );
  }
}
