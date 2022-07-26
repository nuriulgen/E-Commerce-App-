import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

import '../../../../../core/constants/extension/color_extension.dart';
import '../../../../../core/constants/extension/context_extension.dart';
import '../../../../../core/constants/extension/string_extension.dart';
import '../../../../../core/constants/image/image_constants.dart';
import '../../../../../core/init/theme/theme_notifier.dart';
import '../../../../../product/constants/duration_items.dart';
import '../../../../../product/constants/lottie_items.dart';
import '../../../../../product/navigation/app_router.dart';
import '../../../../../product/util/widget/custom_list_tile.dart';

part 'profile_view.g.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);
  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView>
    with TickerProviderStateMixin {
  AppStringConstants? appStringConstants = AppStringConstants.instance;
  late AnimationController _controller;
  bool isLight = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: DurationItems.durationNormal());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: <Widget>[
                _backgroundImage(context),
                PngImage(imagePath: appStringConstants!.profileProfileImage),
                _editIcon(context),
                _userName(context),
                _OrderCard(appStringConstants: appStringConstants),
                _changeThemeButton(context)
              ],
            ),
            SizedBox(height: context.hw100),
            Padding(
              padding: context.paddingXVertical,
              child: _AccountCard(appStringConstants: appStringConstants),
            ),
            Padding(
              padding: context.paddingXVertical,
              child: _SecondCard(appStringConstants: appStringConstants),
            ),
            _signOutButton(context),
          ],
        ),
      ),
    );
  }

  Positioned _changeThemeButton(BuildContext context) {
    return Positioned(
      top: context.hw20,
      right: context.hw20,
      child: Align(
        alignment: Alignment.bottomLeft,
        child: SizedBox(
          width: context.hw100,
          child: InkWell(
            onTap: () {
              _controller.animateTo(isLight ? 0.5 : 1);

              isLight = !isLight;
              Future.microtask(
                  () => context.read<ThemeNotifier>().changeTheme());
            },
            child: Lottie.asset(
              LottieItems.themeChange.lottiePath,
              repeat: false,
              controller: _controller,
            ),
          ),
        ),
      ),
    );
  }

  SizedBox _signOutButton(BuildContext context) {
    return SizedBox(
      width: context.hw330,
      child: Card(
        child: CustomListTile(
          icon: Icons.logout_outlined,
          title: appStringConstants!.profileTitle9,
          onTap: () {
            context.router.navigate(const OnBoardingRoute());
          },
        ),
      ),
    );
  }

  Positioned _editIcon(BuildContext context) {
    return Positioned(
      bottom: context.hw120,
      right: context.hw150,
      child: ClipOval(
        child: Container(
          padding: context.paddingLowAll,
          color: context.white,
          child: Icon(
            Icons.edit,
            color: context.chasm,
            size: context.hw20,
          ),
        ),
      ),
    );
  }

  Positioned _userName(BuildContext context) {
    return Positioned(
      bottom: context.hw70,
      child: Text(
        appStringConstants!.profileUserName,
        style: Theme.of(context)
            .textTheme
            .titleLarge
            ?.copyWith(color: context.white),
      ),
    );
  }

  SizedBox _backgroundImage(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: PngImage(imagePath: appStringConstants!.profileBackGroundImage),
    );
  }
}
