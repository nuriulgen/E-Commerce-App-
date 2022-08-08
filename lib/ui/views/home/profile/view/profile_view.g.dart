part of 'profile_view.dart';

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
