import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../../core/constants/extension/color_extension.dart';
import '../../../../core/constants/extension/context_extension.dart';
import '../../../../core/constants/extension/string_extension.dart';
import '../../../../core/constants/image/image_constants.dart';
import '../../../../product/constants/duration_items.dart';
import '../../../../product/constants/lottie_items.dart';
import '../../../../product/util/widget/custom_list_tile.dart';
import '../../authetication/onboarding/view/onboarding_view.dart';
import 'add_payment_view.dart';
import 'my_orders_view.dart';

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

            /* _changeTheme(context), */
          ],
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
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: ((context) => const OnBoardingView())));
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

class _SecondCard extends StatelessWidget {
  const _SecondCard({
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
              icon: Icons.card_giftcard_outlined,
              title: appStringConstants!.profileTitle7,
            ),
            CustomListTile(
              icon: Icons.help_outline,
              title: appStringConstants!.profileTitle8,
            ),
          ],
        ),
      ),
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
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MyOrdersView()));
              },
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
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AdressBookView()));
              },
            ),
            CustomListTile(
              icon: Icons.credit_card,
              title: appStringConstants!.profileTitle5,
              onTap: () {},
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
