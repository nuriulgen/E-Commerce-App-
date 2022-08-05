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
  final String homeBigCardTitle3 = 'Summer Sea';
  final String homeBigCardImagePath1 = 'model1';
  final String homeBigCardImagePath2 = 'model3';
  final String homeBigCardImagePath3 = 'model2';
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
  final String homeListTileCardTitle1 = 'Handbag LV';
  final String homeListTileCardTitle2 = 'T-shirt';
  final String homeListTileCardSubTitle1 = '225';
  final String homeListTileCardSubTitle2 = '123';
  final String homeListTileCardImagePath1 = 'louis_vuitton';
  final String homeListTileCardImagePath2 = 'tshirt';
  final String homeSaveItemsTitle = 'Saved items';
  final String homeSaveItemsSubTitle = 'View All';

  final String newTrendTitle = 'New Trend';
  final String newTrendTabTitle1 = 'Sort';
  final String newTrendTabTitle2 = 'Filter';
  final String newTrendProductTitle1 = 'Handbag LV';
  final String newTrendProductTitle2 = 'Dress';
  final String newTrendProductTitle3 = 'Shoes';
  final String newTrendProductTitle4 = 'T-shirt';
  final String newTrendProductTitle5 = 'Handbag';
  final String newTrendProductTitle6 = 'Short';
  final String newTrendProductSubTitle1 = '225';
  final String newTrendProductSubTitle2 = '87';
  final String newTrendProductSubTitle3 = '201';
  final String newTrendProductSubTitle4 = '102';
  final String newTrendProductSubTitle5 = '98';
  final String newTrendProductSubTitle6 = '86';
  final String newTrendProductImagePath1 = 'louis_vuitton';
  final String newTrendProductImagePath2 = 'skirt';
  final String newTrendProductImagePath3 = 'shoes';
  final String newTrendProductImagePath4 = 'tshirt';
  final String newTrendProductImagePath5 = 'short';
  final String newTrendProductImagePath6 = 'bag';

  final String searchHintTitle = 'Search';
  final String searchImagePath = 'searches';
  final String searchAlertText = 'You have not recent searches.';

  final String profileBackGroundImage = 'profile_background';
  final String profileProfileImage = 'oval';
  final String profileUserName = 'Jessi Pham';
  final String profileTitle1 = 'My Order';
  final String profileTitle2 = 'Premier Delivery';
  final String profileTitle3 = 'My Details';
  final String profileTitle4 = 'Adress Book';
  final String profileTitle5 = 'Payment Metods';
  final String profileTitle6 = 'Settings';
  final String profileTitle7 = 'Gift Cards';
  final String profileTitle8 = 'Need Help?';
  final String profileTitle9 = 'Signout';

  final String myOrdersTitle = 'My Orders';
  final String myOrdersTextTitle = 'You currently have no orders';
  final String myOrdersTextSubTitle = 'Best get shopping App pronto...';
  final String myOrdersButtonTitle = 'Start Shopping';
  final String myOrdersImagePath = 'my_order';

  final String addPaymentTitle = 'Add Payment';
  final String addPaymentTextTitle = 'You need a billing address';
  final String addPaymentTextSubTitle =
      'You currently have no saved address.Without one, you won\'t able to add a newpayment method.';
  final String addPaymentButtonTitle = 'Add new address';
  final String addPaymentImagePath = 'add_payment';

  final String giftCardsTitle = 'Gift cards & voucher';
  final String giftCardsTextTitle = 'You have no card yet';
  final String giftCardsTextSubTitle1 =
      'You currently have no cards linked to you\n';
  final String giftCardsTextSubTitle2 = 'account.\n';
  final String giftCardsTextSubTitle3 =
      'Get started by see redeeming of buying.';
  final String giftCardsAddGiftButton = 'Add Gift Cards';
  final String giftCardsBuyGiftButton = 'Buy Gift Voucher';
  final String giftCardsImagePath = 'gifts_card';

  final String addGiftTitle = 'Add Gift Cards';
  final String addGiftTextTitle =
      'Enter the long number and scratch off the panel on your card to reveal your pin as shown below.';
  final String addGiftCardTitle1 = 'Back of Gift Card';
  final String addGiftCardTitle2 = '123456789456 8943';
  final String addGiftCardImagePath = 'qr';
  final String addGiftTextFieldTitle1 = '16-Digit Code';
  final String addGiftTextFieldTitle2 = '4-Digit Pin';
  final String addGiftLabelText1= 'Enter 16-Digit Code';
  final String addGiftLabelText2 = 'Enter 4-Digit Pin';
}
