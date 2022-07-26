import 'package:e_commerce_app/core/constant/extension/color_extension.dart';
import 'package:e_commerce_app/core/constant/extension/context_extension.dart';
import 'package:e_commerce_app/core/constant/extension/string_extension.dart';
import 'package:e_commerce_app/product/constant/duration_items.dart';
import 'package:e_commerce_app/product/util/button/custom_elevated_button.dart';
import 'package:e_commerce_app/product/util/widget/custom_app_bar.dart';
import 'package:e_commerce_app/ui/views/home/home_view.dart';
import 'package:flutter/material.dart';

import '../../../../../product/util/widget/custom_radio_button.dart';
import '../../../../../product/util/widget/custom_text_field.dart';
import '../viewmodel/login_viewmodel.dart';

part './login_view.g.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);
  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends LoginViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: appStringConstants!.signUpTitle),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Padding(
            padding: context.padding2xHorizontal,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InputField(
                  firstNameController: firstNameController,
                  appStringConstants: appStringConstants,
                  lastNameController: lastNameController,
                  emailController: emailController,
                ),
                Padding(
                  padding: context.paddingX2Vertical,
                  child: passwordField(),
                ),
                _passwordMessage(),
                Padding(
                  padding: context.padding2xTop,
                  child: _selectGenderText(context),
                ),
                Padding(
                  padding: context.padding2xVertical,
                  child: _selectGenderButton(context),
                ),
                SizedBox(height: context.hw50),
                Padding(
                  padding: context.paddingXBottom,
                  child: SignUpButton(
                    appStringConstants: appStringConstants,
                    formKey: formKey,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  SizedBox _selectGenderButton(BuildContext context) {
    return SizedBox(
      height: context.hw100,
      width: MediaQuery.of(context).size.width,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomRadioButton(
              title: appStringConstants!.signUpSelectFemale,
              value: appStringConstants!.signUpSelectFemale,
              groupValue: gender,
              onChanged: selectGender,
            ),
            CustomRadioButton(
              title: appStringConstants!.signUpSelectMale,
              value: appStringConstants!.signUpSelectMale,
              groupValue: gender,
              onChanged: selectGender,
            ),
          ],
        ),
      ),
    );
  }

  Text _selectGenderText(BuildContext context) {
    return Text(
      appStringConstants!.signUpSelectGender,
      style: Theme.of(context)
          .textTheme
          .caption
          ?.copyWith(color: context.heatherGrey),
    );
  }

  IconButton _changeVisibility() {
    return IconButton(
      icon: AnimatedCrossFade(
        firstChild: const Icon(Icons.visibility_outlined),
        secondChild: const Icon(Icons.visibility_off_outlined),
        crossFadeState: isPasswordVisible
            ? CrossFadeState.showFirst
            : CrossFadeState.showSecond,
        duration: DurationItems.durationNormal(),
      ),
      onPressed: () {
        changeVisibility();
      },
    );
  }

  CustomTextField passwordField() {
    return CustomTextField(
      controller: passwordController,
      labelText: appStringConstants!.signUpPassword,
      obscureText: isPasswordVisible,
      suffix: _changeVisibility(),
    );
  }

  Text _passwordMessage() {
    return Text(
      appStringConstants!.signUpPasswordMessage,
      style: Theme.of(context)
          .textTheme
          .caption
          ?.copyWith(color: context.heatherGrey),
    );
  }
}
