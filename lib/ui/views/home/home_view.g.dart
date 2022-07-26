part of './home_view.dart';

class BigCardFirst extends StatelessWidget {
  const BigCardFirst({
    Key? key,
    required this.appStringConstants,
  }) : super(key: key);

  final AppStringConstants? appStringConstants;

  @override
  Widget build(BuildContext context) {
    return CustomBigCard(
      imagePath: appStringConstants!.homeBigCardImagePath1,
      title: appStringConstants!.homeBigCardTitle1,
    );
  }
}

class BigCardSecond extends StatelessWidget {
  const BigCardSecond({
    Key? key,
    required this.appStringConstants,
  }) : super(key: key);

  final AppStringConstants? appStringConstants;

  @override
  Widget build(BuildContext context) {
    return CustomBigCard(
      imagePath: appStringConstants!.homeBigCardImagePath2,
      title: appStringConstants!.homeBigCardTitle2,
    );
  }
}

class SmallCardSecond extends StatelessWidget {
  const SmallCardSecond({
    Key? key,
    required this.appStringConstants,
  }) : super(key: key);

  final AppStringConstants? appStringConstants;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomSmallCard(
          imagePath: appStringConstants!.homeSmallCardImagePath3,
          title: appStringConstants!.homeSmallCardTitle3,
          subTitle: appStringConstants!.homeSmallCardSubTitle3,
        ),
        CustomSmallCard(
          imagePath: appStringConstants!.homeSmallCardImagePath4,
          title: appStringConstants!.homeSmallCardTitle4,
          subTitle: appStringConstants!.homeSmallCardSubTitle4,
        ),
      ],
    );
  }
}

class SmallCardFirst extends StatelessWidget {
  const SmallCardFirst({
    Key? key,
    required this.appStringConstants,
  }) : super(key: key);

  final AppStringConstants? appStringConstants;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomSmallCard(
          imagePath: appStringConstants!.homeSmallCardImagePath1,
          title: appStringConstants!.homeSmallCardTitle1,
          subTitle: appStringConstants!.homeSmallCardSubTitle1,
        ),
        CustomSmallCard(
          imagePath: appStringConstants!.homeSmallCardImagePath2,
          title: appStringConstants!.homeSmallCardTitle2,
          subTitle: appStringConstants!.homeSmallCardSubTitle2,
        ),
      ],
    );
  }
}
