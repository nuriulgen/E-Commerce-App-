import 'package:e_commerce_app/core/constant/extension/color_extension.dart';
import 'package:e_commerce_app/core/constant/extension/context_extension.dart';
import 'package:e_commerce_app/product/constant/duration_items.dart';
import 'package:e_commerce_app/product/util/button/custom_elevated_button.dart';
import 'package:e_commerce_app/product/util/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../../../../core/constant/extension/string_extension.dart';
import '../../../../product/util/widget/custom_text_field.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);
  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final AppStringConstants? appStringConstants = AppStringConstants.instance;
  bool _isPasswordVisible = false;
  void changeVisibility() {
    setState(() {
      _isPasswordVisible = !_isPasswordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: appStringConstants!.signUpTitle),
      body: Form(
        child: Padding(
          padding: context.padding2xHorizontal,
          child: Column(
            children: [
              _firstNameField(),
              _lastNameField(),
              _emailField(),
              _emailMessage(),
              _passwordController(),
              _passwordMessage(),
              CustomElevatedButton(
                title: appStringConstants!.signUpElevatedButton,
                onPressed: () {},
                color: context.chasm,
                textColor: context.white,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Text _passwordMessage() {
    return Text(
              appStringConstants!.signUpPasswordMessage,
              style: const TextStyle(color: Colors.black),
            );
  }

  Text _emailMessage() {
    return Text(
              appStringConstants!.signUpEmailMessage,
              style: const TextStyle(color: Colors.black),
            );
  }

  CustomTextField _passwordController() {
    return CustomTextField(
      labelText: appStringConstants!.signUpPassword,
      obscureText: _isPasswordVisible,
      suffix: _changeVisibility(),
    );
  }

  IconButton _changeVisibility() {
    return IconButton(
      icon: AnimatedCrossFade(
        firstChild: const Icon(Icons.visibility_outlined),
        secondChild: const Icon(Icons.visibility_off_outlined),
        crossFadeState: _isPasswordVisible
            ? CrossFadeState.showFirst
            : CrossFadeState.showSecond,
        duration: DurationItems.durationNormal(),
      ),
      onPressed: () {
        changeVisibility();
      },
    );
  }

  CustomTextField _emailField() {
    return CustomTextField(
      labelText: appStringConstants!.signUpEmail,
      obscureText: false,
    );
  }

  CustomTextField _lastNameField() {
    return CustomTextField(
      labelText: appStringConstants!.signUpLastNameField,
      obscureText: false,
    );
  }

  CustomTextField _firstNameField() {
    return CustomTextField(
      labelText: appStringConstants!.signUpFirstNameField,
      obscureText: false,
    );
  }
}
