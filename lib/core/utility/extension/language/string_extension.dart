class AppStringConstants {
  static AppStringConstants? _instance;
  static AppStringConstants? get instance {
    _instance ??= AppStringConstants._init();
    return _instance;
  }

  AppStringConstants._init();

  //STRING
  final String onBoardingTitle1 = 'View product 360 degrees';
  final String onBoardingTitle2 = 'Find product easily';
  final String onBoardingTitle3 = 'Payment is easy';
  final String onBoardingSubTitle1 =
      'You can see the product with all angles, true and convenient';
  final String onBoardingSubTitle2 =
      'You just need to take a photo or upload and we will find similar products for you.';
  final String onBoardingSubTitle3 =
      'You just need to take a photo or upload and we will find similar products for you.';
  final String onBoardingNextButton = 'Next';
  final String onBoardingImagePath1 = 'on_boarding1';
  final String onBoardingImagePath2 = 'on_boarding2';
  final String onBoardingImagePath3 = 'on_boarding3';
}
