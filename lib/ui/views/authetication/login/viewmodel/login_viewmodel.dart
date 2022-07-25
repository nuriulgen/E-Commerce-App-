import 'package:e_commerce_app/ui/views/authetication/login/view/login_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constant/extension/string_extension.dart';

abstract class LoginViewModel extends State<LoginView> {
  final AppStringConstants? appStringConstants = AppStringConstants.instance;
  bool isPasswordVisible = false;
  String? gender;

  GlobalKey<FormState> formKey = GlobalKey();

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void changeVisibility() {
    setState(() {
      isPasswordVisible = !isPasswordVisible;
    });
  }

  void changeRadioButton(value) {
    setState(() {
      gender = value;
    });
  }

  void change(value) {
    setState(() {
      gender = value.toString();
    });
  }
}
