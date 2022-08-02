import 'package:e_commerce_app/core/constants/extension/color_extension.dart';
import 'package:e_commerce_app/core/constants/extension/context_extension.dart';
import 'package:e_commerce_app/core/constants/extension/string_extension.dart';
import 'package:e_commerce_app/core/constants/image/image_constants.dart';
import 'package:e_commerce_app/product/constants/lottie_items.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../../product/constants/duration_items.dart';
import '../../../../product/util/widget/custom_list_tile.dart';

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
      body: Column(
        children: <Widget>[
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: <Widget>[
              _backgroundImage(context),
              /* Positioned(
              height: 25,
              width: 25,
              right: 50,
              top: 50,
              child: IconButton(
                icon: const Icon(
                  Icons.dark_mode,
                  color: Colors.white,
                  size: 50,
                ),
                onPressed: () {},
              ),
            ), */
              PngImage(imagePath: appStringConstants!.profileProfileImage),
              _userName(context),
              _OrderCard(appStringConstants: appStringConstants),
            ],
          ),
          SizedBox(height: context.hw100),
          Padding(
            padding: context.paddingXVertical,
            child: _AccountCard(appStringConstants: appStringConstants),
          ),
          const Spacer(),
          /* _changeTheme(context), */
        ],
      ),
    );
  }

  Align _changeTheme(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: SizedBox(
        width: context.hw100,
        child: InkWell(
          onTap: () {
            /*  _controller.animateTo(isLight ? 0.5 : 1);

                isLight = !isLight;
                Future.microtask(
                    () => context.read<ThemeNotifier>().changeTheme()); */
          },
          child: Lottie.asset(
            LottieItems.themeChange.lottiePath,
            repeat: false,
            controller: _controller,
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

class _OrderCard extends StatelessWidget {
  const _OrderCard({
    Key? key,
    required this.appStringConstants,
  }) : super(key: key);

  final AppStringConstants? appStringConstants;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      height: context.hw120,
      width: context.hw330,
      bottom: context.cardPosition,
      child: Card(
        color: context.white,
        shape: const RoundedRectangleBorder(),
        child: Column(
          children: [
            CustomListTile(
              icon: Icons.list_alt_outlined,
              title: appStringConstants!.profileTitle1,
            ),
            CustomListTile(
              icon: Icons.workspace_premium_outlined,
              title: appStringConstants!.profileTitle2,
            )
          ],
        ),
      ),
    );
  }
}

class _AccountCard extends StatelessWidget {
  const _AccountCard({
    Key? key,
    required this.appStringConstants,
  }) : super(key: key);

  final AppStringConstants? appStringConstants;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.hw330,
      child: Card(
        child: Column(
          children: [
            CustomListTile(
              icon: Icons.info_outline,
              title: appStringConstants!.profileTitle3,
            ),
            CustomListTile(
              icon: Icons.location_on_outlined,
              title: appStringConstants!.profileTitle4,
            ),
            CustomListTile(
              icon: Icons.credit_card,
              title: appStringConstants!.profileTitle5,
            ),
            CustomListTile(
              icon: Icons.settings,
              title: appStringConstants!.profileTitle6,
            ),
          ],
        ),
      ),
    );
  }
}
