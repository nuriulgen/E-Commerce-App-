import 'package:flutter/material.dart';

class HomeDetailView extends StatefulWidget {
  final List? jsondata;
  const HomeDetailView({
    Key? key,
    this.jsondata,
  }) : super(key: key);
  @override
  State<HomeDetailView> createState() => _HomeDetailViewState();
}

class _HomeDetailViewState extends State<HomeDetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('widget.title',
              style: TextStyle(
                color: Colors.white,
              )),
        ),
        body: const Center(
          child: Text('widget.title',
              style: TextStyle(
                color: Colors.white,
              )),
        ));
  }
}
