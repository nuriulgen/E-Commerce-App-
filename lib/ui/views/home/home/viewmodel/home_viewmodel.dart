import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../../core/constants/extension/string_extension.dart';
import '../../../../../product/global/model/product_model.dart';
import '../view/home_view.dart';

abstract class HomeViewModel extends State<HomeView> {
   AppStringConstants? appStringConstants = AppStringConstants.instance;
  List? data;

  @override
  void initState() {
    super.initState();
    _loadDataToTravelList().then((value) {
      setState(() {
        data = value;
      });
    });
  }

  Future<List<ProductModel>> _loadDataToTravelList() async {
    String jsonString = await rootBundle.loadString('assets/json/data.json');
    List<dynamic> jsonResponse = json.decode(jsonString).toList();
    return jsonResponse.map((v) => ProductModel.fromJson(v)).toList();
  }
}