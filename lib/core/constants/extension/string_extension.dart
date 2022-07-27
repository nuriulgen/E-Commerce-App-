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

  final String signUpTitle = 'Sign Up';
  final String signUpFirstNameField = 'First Name';
  final String signUpLastNameField = 'Last Name';
  final String signUpEmail = 'Email Adress';
  final String signUpPassword = 'Password';
  final String signUpElevatedButton = 'Sign Up';
  final String signUpEmailMessage = 'We\'ll send your order confirmation here.';
  final String signUpPasswordMessage = 'Must be 10 or more characters.';
  final String signUpSelectGender = 'Mostly interested in (Optional):';
  final String signUpSelectMale = 'Male';
  final String signUpSelectFemale = 'Female';

  final String homeBigCardTitle1 = 'New Trend';
  final String homeBigCardTitle2 = 'Srippes';
  final String homeBigCardTitle3 = 'Female';
  final String homeBigCardImagePath1 = 'model1';
  final String homeBigCardImagePath2 = 'model3';
  final String homeBigCardImagePath3 = 'Female';
  final String homeSmallCardTitle1 = 'Pull&Bear Slim Fit';
  final String homeSmallCardTitle2 = 'Pull&Bear Slim Fit';
  final String homeSmallCardTitle3 = 'Summer Coords';
  final String homeSmallCardTitle4 = 'Face Coverings';
  final String homeSmallCardSubTitle1 = 'Dress';
  final String homeSmallCardSubTitle2 = 'Dress';
  final String homeSmallCardSubTitle3 = 'Tshirt';
  final String homeSmallCardSubTitle4 = 'Deodorant';
  final String homeSmallCardImagePath1 = 'red_dress';
  final String homeSmallCardImagePath2 = 'green_dress';
  final String homeSmallCardImagePath3 = 'tshirt';
  final String homeSmallCardImagePath4 = 'deodrant';
}
